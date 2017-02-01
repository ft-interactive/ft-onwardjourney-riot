<onward-journey>
  <section each={ relatedContent }
    class="onward-journey__section"
    data-rows={ rows }
    data-layout={ layout }
    data-list={ list }
  />

  <style>
  .o-card {
    background-color: #fff1e0;
    margin-bottom: 12px;
  }
  .o-card--standout {
    background-color: #e9decf;
    padding-bottom: 10px;
  }
  .o-card__tag {
    margin-bottom: 0;
  }
  .o-card__meta-image--rounded {
    margin-left: 5px;
  }
  .o-card__standfirst {
    font: 16px/1.3 'Georgia', serif;
  }
  .onward-journey__header {
    position: relative;
    padding: 0;
    margin-top: 10px;
    overflow: hidden;
    margin-left: 0;
    &.onward-journey--standout {
      margin-bottom: 10px;
    }
  }
  .onward-journey__title:after {
    display: initial;
    content: '';
    position: absolute;
    height: 1px;
    border-bottom: 1px solid #cec6b9;
    top: 18px;
    width: 100%;
  }
  .onward-journey__name {
    font-family: FinancierDisplayWeb,serif;
    line-height: 24px;
    font-size: 20px;
    font-weight: 400;
    display: inline;
    margin: 0 10px 0 0;
    padding: 10px 0 0;
    color: #1d1d1d;
  }
  .onward-journey__link {
    font-family: MetricWeb,sans-serif;
    line-height: 16px;
    font-size: 14px;
    font-weight: 600;
    font-size: 16px;
    position: relative;
    background-color: #fff1e0;
    border-bottom: 0;
    float: right;
    margin-left: 10px;
    padding: 8px 20px 0 10px;
    min-height: 24px;
    -webkit-transition: color .3s;
    transition: color .3s;
    color: #27757b;
    text-decoration: none;
    display: none;
    &:hover {
      color: #333;
    }
  }
  .onward-journey__link:after {
    background-image: url("https://next-geebee.ft.com/image/v1/images/raw/fticon:arrow-right?source=o-icons&tint=%2327757B,%2327757B&format=svg");
    background-image: url("https://next-geebee.ft.com/image/v1/images/raw/fticon:arrow-right?source=o-icons&tint=%2327757B,%2327757B&format=png&width=16")\9;
    display: inline-block;
    content: '';
    position: absolute;
    top: 8px;
    right: 0;
  }
  .onward-journey__link:after, .onward-journey__link:hover:after {
    width: 16px;
    height: 16px;
    background-repeat: no-repeat;
    background-size: contain;
    background-position: 50%;
    background-color: rgba(0, 0, 0, 0);
    vertical-align: baseline;
  }
  .onward-journey__link:hover:after {
    background-image: url("https://next-geebee.ft.com/image/v1/images/raw/fticon:arrow-right?source=o-icons&tint=%23333333,%23333333&format=svg");
    background-image: url("https://next-geebee.ft.com/image/v1/images/raw/fticon:arrow-right?source=o-icons&tint=%23333333,%23333333&format=png&width=16")\9;
    display: inline-block;
  }
  .o-card__standfirst--small {
    margin-top: 0.5em;
    font: 14px/1.3 'Georgia', sans-serif;
  }
  .onward-journey__link {
    display: inline-block;
  }
  .onward-journey__link {
    display: inline-block;
  }
  @media (max-width: 76.24em) and (min-width: 46.25em) {
    [data-rows="1"] [data-o-grid-colspan~=XL3]:nth-child(n+4) {
      display: none;
    }
    [data-rows="2"] [data-o-grid-colspan~=XL3]:nth-child(n+7) {
      display: none;
    }
    [data-rows="3"] [data-o-grid-colspan~=XL3]:nth-child(n+10) {
      display: none;
    }
  }
  </style>
  <script>
    this.relatedContent = opts.config || [];
    this.on('mount', function(){
      const nodeList = this.root.querySelectorAll('section');
      nodeList.forEach(function(tag, i){
        if (!tag.classList.contains('is-rendered')) {
          var list = tag.getAttribute('data-list');
          var layout = tag.getAttribute('data-layout') || '';
          var limit = parseInt(tag.getAttribute('data-rows') || '1') * 4;
          var urlBase = 'https://ig.ft.com/onwardjourney/v1/';
          var url = [urlBase, list, '/html/', layout, '?limit=', limit].join('');

          if (list) {
            fetch(url)
            .then(function(res) { return res.text() })
            .then(function(html) {
              tag.innerHTML = html;
            })
            .catch(function(err){
              console.error('Removing Onward Journey tag due to error:');
              console.error(err);
              tag.remove();
            });
          }
        }
        tag.classList.add('is-rendered');
      });
    });
  </script>

</onward-journey>
