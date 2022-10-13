mkdir temp_font_setup && 
    cd temp_font_setup &&
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip &&
    unzip JetBrainsMono.zip &&
    cp 'JetBrains Mono Regular Nerd Font Complete.ttf' ~/.local/share/fonts &&
    fc-cache -fv &&
    cd .. &&
    rm -rf temp_font_setup;

