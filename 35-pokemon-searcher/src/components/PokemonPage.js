import React from 'react'
import PokemonCollection from './PokemonCollection'
import PokemonForm from './PokemonForm'
import Search from './Search'
import { Container } from 'semantic-ui-react'

const BASE_URL = 'http://localhost:3000'

class PokemonPage extends React.Component {

    state = {
        pokemon: [],
        searchTerm: '',
        sortByHp: false,
    }
    
    componentDidMount() {
        fetch(BASE_URL + '/pokemon')
            .then( r => r.json() )
            .then( pokemon => this.setState({ pokemon }) ) 
    }

    addNewPoke = (newPoke) => {
        this.setState({
            pokemon: [...this.state.pokemon, newPoke],
        })
    }

    handleSearchChange = (e) => {
        this.setState({ searchTerm: e.target.value })
    }

    filteredPokemon = () => {
        const { pokemon, searchTerm } = this.state
        
        return pokemon.filter( poke => {
            return poke.name.toLowerCase().includes(searchTerm.toLowerCase()) 
        })
    }

    sortedPokemon = () => {
        return this.state.sortByHp
        ? this.filteredPokemon().sort( (a, b) => {
            const aHp = a.stats.find( s => s.name == "hp" ).value
            const bHp = b.stats.find( s => s.name == "hp" ).value
            return aHp - bHp
        })
        : this.filteredPokemon()
    }
    
    render() {
        return (
            <Container>
                <h1>Pokemon Searcher</h1>
                <br />
                <PokemonForm addNewPoke={ this.addNewPoke } />
                <br />
                <Search 
                    onChange={ this.handleSearchChange } 
                    searchTerm={this.state.searchTerm}
                />
                <button
                    onClick={ () => this.setState({ sortByHp: !this.state.sortByHp })}
                >
                    Sort by HP
                </button>
                <br />
                <PokemonCollection pokemon={ this.sortedPokemon() } />
            </Container>
        )
    }
}

export default PokemonPage
