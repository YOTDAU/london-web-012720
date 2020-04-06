import React from 'react'
import { Card } from 'semantic-ui-react'

class PokemonCard extends React.Component {

    state = {
        forward: true,
    }
    
    hpStat = () => this.props.poke.stats.find( stat => stat.name === "hp" )

    cardImage = () => {
        const { front, back } = this.props.poke.sprites

        return this.state.forward
        ? front
        : back
    }

    handleClick = () => {
        this.setState({ forward: !this.state.forward })
    }

    render() {
        return (
        <Card onClick={ this.handleClick } >
            <div>
                <div className="image">
                    <img alt="pokemon" src={ this.cardImage() }/>
                </div>
                <div className="content">
                    <div className="header">{this.props.poke.name}</div>
                </div>
                <div className="extra content">
                    <span>
                    <i className="icon heartbeat red" />
                    { this.hpStat().value }
                    </span>
                </div>
            </div>
        </Card>
        )
    }
}

export default PokemonCard
