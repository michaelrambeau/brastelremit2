---
layout: 'default'
title: 'Home'
menuId: 'HOME'
standalone: true
inMenu: true
position: 1
---
countries = [
  code: 'am'
  label: 'Armenia'
,
  code: 'az'
  label: 'Azerbaidjan'
,  
  code: 'bd'
  label: 'Bangladesh'
,
  code: 'by'
  label: 'Belarus'
,
  code: 'ee'
  label: 'Estonia'
,
  code: 'kz'
  label: 'Kazakstan'
,  
  code: 'kg'
  label: 'Kyrgzystan'
,  
  code: 'id'
  label: 'Indonesia'
,  
  code: 'in'
  label: 'India'
, 
  code: 'lv'
  label: 'Latvia'
,  
  code: 'md'
  label: 'Moldova'
,  
  code: 'my'
  label: 'Malaysia'
,  
  code: 'mm'
  label: 'Myanmar'
,  
  code: 'np'
  label: 'Nepal'
,  
  code: 'ph'
  label: 'Philippines'
,
  code: 'ru'
  label: 'Russia'
,  
  code: 'sg'
  label: 'Singapore'
,  
  code: 'lk'
  label: 'Sri Lanka'
,  
  code: 'tj'
  label: 'Tajikistan'
,  
  code: 'ua'
  label: 'Ukraine'
,  
  code: 'uz'
  label: 'Uzbekistan'
,  
  code: 'vn'
  label: 'Vietnam'
]

news=[
  date: '2013-08-07'
  category: 'IMPORTANT'
  text: 'Recipient countries &ndash; holiday information for August 2013'
,  
  date: '2013-07-07'
  category: 'MAINTENANCE'
  text: 'Notice of maintenance (July 5th, 2013)'
,  
  date: '2013-07-01'
  category: 'IMPORTANT'
  text: 'Recipient countries – holiday information for July 2013'
,  
  date: '2013-05-29'
  category: 'IMPORTANT'
  text: 'Information about sending money using the Japan Post Bank deposit card'
,  
  date: '2013-05-28'
  category: 'IMPORTANT'
  text: 'Brastel Remit is now available in 7 languages!'
,  
]

if false
  div style:"width:100%;height:165px;background-image:url('http://localhost/GenericFiles/imt/css/external/images/header-background960x165.jpg')"


#For Mobiles
div '.jumbotron.visible-xs.yellow-bg', ->
  div '.container', ->  
    div '', ->
      h1 'SEND MONEY OVERSEAS'
      p '''
        Brastel Remit is a remittance service offered by Brastel to send money overseas.<br/>
        All procedure, from membership registration to remittance requests, is available online in the comfort of your home, without having to endure long lines at banks. 
      '''
      p '.text-center', ->
        a '.btn.btn-primary.btn-large', href:'step1.html','SUBSCRIBE NOW'
        img src: 'img/yens_from_japan.png'
      if false
        div '.flags', ->
          for country in countries
            img src: 'img/flags/'+country.code+'.png', alt:country.code, width: 40
      

div '.jumbotron.yellow-bg.hidden-xs', 'style': 'position:relative;min-height:500px;margin:0;', ->
  div '.container', 'style': 'z-index:2;position:relative;', ->
    div '.row', ->
      div '.col-sm-7.col-xs-10', ->
        h1 'SEND MONEY OVERSEAS'
        p '.text', '''
          Brastel Remit is a remittance service offered by Brastel to send money overseas.
        '''
        p '.text', '''
          All procedure, from membership registration to remittance requests, is available online in the comfort of your home, without having to endure long lines at banks.
        '''        
        p ->
          a '.btn.btn-primary.btn-lg', href: 'step1.html', 'SUBSCRIBE NOW!'
        if false
          div '.flags', ->
            for country in countries
              img src: 'img/flags/'+country.code+'.png', alt:country.code, width: 40
              if country.isNew then span ".label.label-info", 'NEW!'          
  div '.globe', ''  
  
#Fot bigger screens
if true
  div '.jumbotron.white', style: '', ->
    div '.container', ->  
      div '.row', ->
        div '.col-sm-7', ->
          h2 'Send money to your dear ones with Brastel Remit'
          p '.text', """
            #{countries.length} available destinations.
          """

          div '.flags', ->
            for country in countries
              img src: 'img/flags/'+country.code+'.png', alt:country.code, width: 36
              if country.isNew then span ".label.label-info", 'NEW!'                      
          p """
            Many other destinations soon!
          """
        div '.col-sm-5', ->
          img '.img-responsive', src: 'img/home/family.jpg'  
  
  
#
# The 3 points
#
div '.container', ->  
  div '.row', ->
    div '.col-sm-6.col-md-4', ->
      div '.point', ->
        div '.panel-body', ->
          h2 'LOW COST!'
          p 'You will have a hard time finding a rate cheaper than Brastel Remit!'
          table '.fees.table.table-bordered', ->
            thead ->
              tr ->
                th '.amount', 'Transfer Amount'
                th '.fee-value', 'Transfer Fee'
              tbody ->
                tr ->
                  td '.amount', 'Up to ¥30,000'
                  td '.fee-value', '¥880'
                tr ->
                  td '.amount', 'From ¥30,001 to ¥100,000'
                  td '.fee-value', '¥1480'
                tr ->
                  td '.amount', 'From ¥100,001 to ¥500,000'
                  td '.fee-value', '¥1680'
          p ->
            a '.btn.btn-default', href: 'fees.html', 'Fees details &raquo;'
          p 'Exchange rates are updated every day'
          p ->
            a '.btn.btn-default', href: '#', 'Today\'s exchange rate &raquo;'      
        
    div '.col-sm-6.col-md-4', ->
      div '.point', ->
        div '.panel-body', ->      
          h2 'CONVENIENT!'
          p 'Sending money overseas has never been so simple!'
          p 'Subscribe online and in a few days, you will receive a starter kit with information on how to activate your account.'
          p 'Keep a list of those you want to send money to and make remittances to them at any time. '
          p 'Send money by making deposits by Japan ATM or using the Japan Postal Bank.'
          p ->
            a '.btn.btn-default', href: '#', 'How it works &raquo;'  
        
    
    div '.col-sm-6.col-md-4', ->
      div '.point', ->    
        div '.panel-body', ->      
          h2 'SAFE!'
          p 'Brastel Remit is a service offered by <a target="_blank" href="www.brastel.com">Brastel Co., Ltd.</a>, established in Japan since 1998.'
          p 'Customers from  all over Japan already use Brastel Remit services to send money overseas.'
          p 'Customer service is available by email and by phone, 6 days a week, in 7 languages '
          p 'You can meet us at Brastel Remit counter, in Tokyo and Nagoya.'
          p ->
            a '.btn.btn-default', href: '#', 'Brastel Remit Counter &raquo;'   
    
div 'style': 'background-color: #EEECE5;padding-top:40px;', -> 
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
    

  if false
    div '.row', -> 
      div '.col-sm-6.col-md-4', ->
        div '.panel', ->
          img '.img-responsive', src: 'img/home/counter.jpg'
          p 'text1'
      div '.col-sm-6.col-md-4', ->
        div '.panel', ->
          img '.img-responsive', src: 'img/home/family.jpg'
          p 'text2'
      div '.col-sm-6.col-md-4', ->
        div '.panel', ->
          img '.img-responsive', src: 'img/home/myanmar.jpg'
          p 'text3'        
      div '.col-sm-6.col-md-4', ->
        div '.panel', ->
          img '.img-responsive', src: 'img/home/counter.jpg'
          p 'text4'
      div '.col-sm-6.col-md-4', ->
        div '.panel', ->
          img '.img-responsive', src: 'img/home/family.jpg'
          p 'text5'        
      div '.col-sm-6.col-md-4', ->
        div '.panel', ->
          img '.img-responsive', src: 'img/home/myanmar.jpg'
          p 'text6'        
  
  div '.container', ->
    div '.row', -> 
      div '.col-md-8', ->
        div '.panel', ->
          div '.panel-body', ->
            h2 'Latest news'
            div '.message-board', ->
              table '.table.table-striped', ->
                  for doc in news
                    tr ->
                      td doc.date
                      td ->
                        div doc.category
                        div doc.text
              p ->
                 a '.btn.btn-default', href: '#', 'See more &raquo;'   

      div '.col-md-4', ->
        div '.panel.maintenance', ->
          div '.panel-body', ->      
            h2 'Maintenance'
            p '''
              The Brastel Remit website undergoes weekly routine maintenance every Thursday from 19:00 until the following day approximately at 6:00.
              During maintenance all features of the website cannot be accessed.
            '''
        
    
        
        
        
      
            
