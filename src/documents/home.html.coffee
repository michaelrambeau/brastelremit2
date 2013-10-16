---
layout: 'default'
title: 'Home'
menuId: 'HOME'
standalone: true
comment: 'the new home page!'
---

#text @nd(@document)

div '.jumbotron', ->
  if true
    div '.container', ->
      div '.row', style:"background-color: white;", ->
        div '.col-sm-6', ->
          h1 'SEND MONEY OVERSEAS'
          p '''
            Brastel Remit is a remittance service offered by Brastel to send money overseas.
            All procedures, from membership registration to remittance requests, is available online in the comfort of your home, without having to endure long lines at banks.
          '''
          p ->
            a '.btn.btn-primary.btn-lg', href: 'step1.html', 'SUBSCRIBE NOW'          
        div '.col-sm-6', ->    
          img '.img-responsive', src: 'img/home/family.jpg'

  div '.container', ->
    div '.row', style:"background-color: white;", ->
      div '.col-sm-7', ->
        h1 'SEND MONEY OVERSEAS'
        p '''
          Brastel Remit is a remittance service offered by Brastel to send money overseas.
          All procedures, from membership registration to remittance requests, is available online in the comfort of your home, without having to endure long lines at banks.
        '''        
        p ->
          a '.btn.btn-primary.btn-lg', href: 'step1.html', 'SUBSCRIBE NOW'
      div '.col-sm-5', ->
        img 'img-responsive', src:'img/home/world2.png'      

hr()


div '.jumbotron', 'style': 'position:relative;min-height:500px;background: -moz-linear-gradient(left, #faf32e 0%, #fff 100%);;margin-bottom:0;', ->
  div '.container', 'style': 'z-index:2;position:relative;', ->
    div '.row', ->
      div '.col-sm-7.col-xs-10', ->
        h1 'SEND MONEY OVERSEAS'
        p '''
          Brastel Remit is a remittance service offered by Brastel to send money overseas.
          <br/>
          All procedures, from membership registration to remittance requests, is available online in the comfort of your home, without having to endure long lines at banks.
        '''        
        p ->
          a '.btn.btn-primary.btn-lg', href: 'step1.html', 'SUBSCRIBE NOW'
  div '.globe', ''
  
div 'style': 'background-color: #EEECE5;padding-top:40px;z-index:2', -> 
  div '.container', ->
    div '.row', ->
      div '.col-sm-6.col-md-4', ->
        div '.panel.panel-primary', ->
          div '.panel-heading', 'Brastel Remit Counter'
          img '.img-responsive', src: 'img/home/counter.jpg'
          div '.panel-body', ->
            p '.sub-title', 'You can meet us at Brastel Remit counter, in Tokyo and Nagoya.'
      div '.col-sm-6.col-md-4', ->
        div '.panel.panel-primary', ->
          div '.panel-heading', 'Cashback campaign'
          img '.img-responsive', src: 'img/home/family.jpg'
          div '.panel-body', ->
            p '.sub-title', 'Make a transfer and get &yen;380 credit on your Brastel card!'
      div '.col-sm-6.col-md-4', ->
        div '.panel.panel-primary', ->
          div '.panel-heading', 'New countries available!'
          img '.img-responsive', src: 'img/home/myanmar.jpg'
          div '.panel-body', ->
            p '.sub-title', 'With Brastel Remit, you can also send money to Myanmar'  
