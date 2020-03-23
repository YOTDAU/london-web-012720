const schlep = {
  createElement: (tag, params) => {
    const el = document.createElement(tag);

    if (params.innerText) {
      el.innerText = params.innerText;
    }

    if (params.onClick) {
      el.addEventListener("click", params.onClick);
    }

    if (params.children) {
      el.append(...params.children);
    }

    return el;
  }
};
