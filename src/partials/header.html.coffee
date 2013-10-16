#Available languages
languages=[
  code: 'jp'
  text: '日本語'
,
  code: 'us'
  text: 'English'
  disabled: true
,
  code: 'id'
  text: 'Bahasa Indonesia'
,
  code: 'my'
  text: 'Bahasa Malaysia'
,
  code: 'np'
  text: 'Nepali'
,
  code: 'ph'
  text: 'Tagalog'
,
  code: 'vn'
  text: 'Vietnamese'
]

#Pages that can be accessed from navigation menu, sorted by "position" attirbute
docs = @getCollection('documents').findAllLive({inMenu: true},[position: 1]).toJSON()


nav ".navbar.navbar-default.navbar-fixed-top", 'role':"navigation", ->
  div '.container', ->
    div '.navbar-header', ->
      button '.navbar-toggle', 'data-toggle':'collapse','data-target':'#main-menu', ->
        span '.icon-bar',''
        span '.icon-bar',''
        span '.icon-bar',''
        
      a '.navbar-brand.visible-xs', href: 'index.html', ->
       img src: "img/logos/brastel_remit_200px.png", width: "130"

      #LANGUAGES (mobile version)
      div '.dropdown.language-switcher-small.visible-xs', ->
        a ".dropdown-toggle", href:"#", 'data-toggle':"dropdown", ->
         img src: 'img/flags/languages/us.png'
         span '.caret',''
        ul '.dropdown-menu.pull-right', ->
          for language in languages
            li ''+ (if language.disabled is true then '.disabled' else ''), -> a href: "#", ->
              img src: 'img/flags/languages/'+language.code+'.png'
              text ' '+language.text
      
      #LOGIN button, for mobiles
      div '.dropdown.login-button-small.hidden-lg', ->
        a ".dropdown-toggle", href:"#", 'data-toggle':"dropdown", ' '
        form '.dropdown-menu.login-form.pull-right', ->
          fieldset ->
            legend 'Member site'
            div '.form-group', ->
              input '.form-control', type: 'text', 'placeholder': 'Username'
            div '.form-group', ->
              input '.form-control', type: 'password', 'placeholder': 'Password'
            p '.text-center', ->
              button '.btn.btn-primary',type: 'submit', 'SIGN IN'
              
                
    #Main menu        
    div '#main-menu.navbar-collapse.collapse', ->
      ul '.nav.navbar-nav', ->
        for doc in docs
          li ''+(if @document.menuId is doc.menuId then '.active' else '') + (if doc.disabled is true then '.disabled' else ''), ->
            a href: doc.relativeOutPath, doc.title
        li '.dropdown.language-switcher-big.hidden-xs', ->
          a ".dropdown-toggle", href:"#", 'data-toggle':"dropdown", ->
            img src: 'img/flags/languages/us.png'
            text 'Language / 言語'
            span '.caret',''
          ul '.dropdown-menu', ->
            for language in languages
              li ''+ (if language.disabled is true then '.disabled' else ''), -> a href: "#", ->
                img src: 'img/flags/languages/'+language.code+'.png'
                text ' '+language.text
       
      #LOGIN FORM (for desktops)
      form '.navbar-form.form-inline.pull-right.visible-lg', ->
        input type:'text', 'placeholder':'username', size: 10
        input type:'password', 'placeholder':'password', size: 10
        button '.btn.btn-primary.btn-sm', type: 'submit', 'SIGN IN'
        