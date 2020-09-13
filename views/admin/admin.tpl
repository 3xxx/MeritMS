<!-- 后台主页面，其他为子页面-->
<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MeritMS后台</title>
  <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css" />
  <link rel="stylesheet" href="/static/css/jquery.mCustomScrollbar.min.css">
  <link rel="stylesheet" href="/static/css/custom.css">
  <script type="text/javascript" src="/static/js/bootstrap-treeview.js"></script>
  <link rel="stylesheet" type="text/css" href="/static/css/bootstrap-treeview.css" />
  <link rel="stylesheet" type="text/css" href="/static/font-awesome-4.7.0/css/font-awesome.min.css" />
</head>

<body>
  <div class="page-wrapper toggled">
    <nav id="sidebar" class="sidebar-wrapper">
      <div class="sidebar-content mCustomScrollbar _mCS_1 mCS-autoHide desktop">
        <div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
          <div id="mCSB_1_container" class="mCSB_container" style="position: relative; left: 0px; top: 0px;" dir="ltr">
            <a href="#" id="toggle-sidebar"> <i class="fa fa-bars"></i>
            </a>
            <div class="sidebar-brand">
              <a href="#">pro sidebar</a>
            </div>
            <div class="sidebar-header">
              <div class="user-pic">
                <img class="img-responsive img-rounded mCS_img_loaded" src="/static/img/user.jpg" alt=""></div>
              <div class="user-info">
                <span class="user-name">
                  Engineer <strong>CMS</strong>
                </span>
                <span class="user-role">Administrator</span>
                <div class="user-status">
                  <a href="#">
                    <span class="label label-success">Online</span>
                  </a>
                </div>
              </div>
            </div>
            <!-- sidebar-header  -->
            <div class="sidebar-search">
              <div>
                <div class="input-group">
                  <input type="text" class="form-control search-menu" placeholder="Search for...">
                  <span class="input-group-addon"> <i class="fa fa-search"></i>
                  </span>
                </div>
              </div>
            </div>
            <!-- sidebar-search  -->
            <div class="sidebar-menu">
              <ul id="tree"></ul>
            </div>
            <!-- sidebar-menu  -->
          </div>
          <!--<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;">  
          <div class="mCSB_draggerContainer">
            <div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px; display: block; height: 66px; max-height: 194px;">
              <div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
            </div>
            <div class="mCSB_draggerRail"></div>
          </div>
        </div>
        -->
        </div>
      </div>
      <!-- sidebar-content  -->
      <div class="sidebar-footer">
        <a href="#">
          <i class="fa fa-bell"></i>
          <span class="label label-warning notification">3</span>
        </a>
        <a href="#">
          <i class="fa fa-envelope"></i>
          <span class="label label-success notification">7</span>
        </a>
        <a href="#">
          <i class="fa fa-gear"></i>
        </a>
        <a href="/">
          <i class="fa fa-power-off"></i>
        </a>
      </div>
    </nav>
    <!-- sidebar-wrapper  -->
    <main class="page-content">
      <div class="breadcrumbs">
        <ol class="breadcrumb" split="&gt;">
          <li>
            <a href="javascript:void(0)">
              <i class="fa fa-home" aria-hidden="true"></i>
              后台
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="fa '. $parents['picon'] .' " aria-hidden="true"></i>
              日历
            </a>
          </li>
        </ol>
      </div>
      <div class="container-fluid">
        <iframe src="/admin/01" name='main' frameborder="0" width="100%" scrolling="no" marginheight="0" marginwidth="0" id="iframepage" onload="this.height=100"></iframe>
      </div>
    </main>
    <!-- page-content" -->
  </div>
  <script type="text/javascript">
  $(function() {
    var data = [{
        text: "欢迎您~{{.Ip}}",
        icon: "fa fa-optin-monster",
        selectable: true,
        id: '010',
      },
      {
        text: "系统设置",
        icon: "fa fa-tachometer icon",
        href: "#node-1",
        id: '01',
        selectable: false,
        tags: ['available'],
        nodes: [
          // { 
          //   icon: "fa fa-align-right",
          //   text: "*分级目录",
          //   id: '012',
          //   nodeId: '012'
          // }, 
          {
            icon: "fa fa-cog",
            text: "基本设置",
            id: '011',
            nodeId: '011',
          },
          {
            icon: "fa fa-bug",
            text: "搜索IP",
            id: '012',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            }
          }
        ]
      },
      {
        text: "账号管理",
        icon: "fa fa-users icon",
        // selectedIcon: "glyphicon glyphicon-stop",
        href: "#node-1",
        // selectable: true,
        id: '02',
        selectable: false,
        tags: ['available'],
        nodes: [{
            icon: "fa fa-align-right",
            text: "*组织结构",
            id: '021'
          },
          {
            icon: "fa fa-align-right",
            text: "用户-组织结构",
            state: {
              disabled: true,
            },
            id: '022'
          },
          {
            icon: "fa fa-users",
            text: '*用户-角色',
            id: '023'
          },
          {
            icon: "fa fa-cny",
            text: "*角色-成果价值",
            id: '024',
            state: {
              // checked: true,
              // disabled: true,
              // expanded: true,
              // selected: true
            }
          },
        ]
      },
      {
        text: "项目设置",
        icon: "fa fa-balance-scale",
        // selectedIcon: "glyphicon glyphicon-stop",
        href: "#node-1",
        // selectable: true,
        id: '03',
        selectable: false,
        tags: ['available'],
        nodes: [{
            icon: "fa fa-align-right",
            text: "*分级目录",
            id: '031',
          },
          {
            icon: "fa fa-users",
            text: '*角色-项目权限',
            id: '032'
          },
          {
            icon: "fa fa-edit",
            text: "编辑目录",
            id: '033',
            tags: [''],
          },
          {
            icon: "fa fa-copy",
            text: "快捷编辑",
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            },
            id: '034',
          },
          {
            icon: "fa fa-edit",
            text: "同步IP",
            id: '035'
          },
          {
            icon: "fa fa-th",
            text: 'IP地址段',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            },
            id: '036'
          }
        ]
      },
      {
        text: "成果设置",
        icon: "fa fa-tachometer icon",
        // selectedIcon: "glyphicon glyphicon-stop",
        href: "#node-1",
        selectable: true,
        id: '04',
        selectable: false,
        tags: ['available'],
        nodes: [{
            icon: "fa fa-dollar",
            text: "*成果类型",
            id: '041'
          },
          {
            icon: "fa fa-cny",
            text: "科室成果类型",
            id: '042',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            }
          },
          {
            icon: "fa fa-edit",
            text: "本周成果",
            id: '043',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            }
          },
          {
            icon: "fa fa-copy",
            text: "本月成果",
            id: '044',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            }
          },
          {
            icon: "fa fa-lock",
            text: "前月成果",
            id: '045',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            }
          },
          {
            icon: "fa fa-lock",
            text: "当年成果",
            id: '046',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            }
          }
        ]
      },
      {
        text: "价值设置",
        icon: "fa fa-tachometer icon",
        // selectedIcon: "glyphicon glyphicon-stop",
        href: "#node-1",
        selectable: true,
        id: '05',
        selectable: false,
        tags: ['available'],
        nodes: [{
            icon: "fa fa-dollar",
            text: "*定义价值",
            id: '051'
          },
          {
            icon: "fa fa-cny",
            text: "*科室价值",
            id: '052',
            state: {
              // checked: true,
              // disabled: true,
              // expanded: true,
              // selected: true
            }
          },
          {
            icon: "fa fa-edit",
            text: "当年价值",
            id: '053',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            }
          },
          {
            icon: "fa fa-copy",
            text: "去年价值",
            id: '054',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            }
          },
          {
            icon: "fa fa-lock",
            text: "近5年价值",
            id: '055',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            }
          },
          {
            icon: "fa fa-lock",
            text: "所有价值",
            id: '056',
            state: {
              // checked: true,
              disabled: true,
              // expanded: true,
              // selected: true
            }
          }
        ]
      }
    ]

    $('#tree').treeview({
      data: data, // data is not optional
      levels: 1,
      enableLinks: true,
      showTags: false,
      // showCheckbox: true,
      state: {
        checked: true,
        disabled: true,
        expanded: true,
        selected: true
      }
      // multiSelect: true
    });


    $('#tree').on('nodeSelected', function(event, data) {
      document.getElementById("iframepage").src = "/admin/" + data.id;
      if (data.id == "010") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;日历")
      } else if (data.id == "011") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;系统设置&gt;" + data.text)
      } else if (data.id == "012") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;系统设置&gt;" + data.text)
      } else if (data.id == "013") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;系统设置&gt;" + data.text)
      } else if (data.id == "014") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;系统设置&gt;" + data.text)
      } else if (data.id == "015") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;系统设置&gt;" + data.text)
      } else if (data.id == "016") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;系统设置&gt;" + data.text)
      } else if (data.id == "021") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;账号管理&gt;" + data.text)
      } else if (data.id == "022") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;账号管理&gt;" + data.text)
      } else if (data.id == "023") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;账号管理&gt;" + data.text)
      } else if (data.id == "024") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;账号管理&gt;" + data.text)
      } else if (data.id == "030") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;项目设置&gt;" + data.text)
      } else if (data.id == "031") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;项目设置&gt;" + data.text)
      } else if (data.id == "032") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;项目设置&gt;" + data.text)
      } else if (data.id == "033") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;项目设置&gt;" + data.text)
      } else if (data.id == "034") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;项目设置&gt;" + data.text)
      } else if (data.id == "035") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;项目设置&gt;" + data.text)
      } else if (data.id == "036") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;项目设置&gt;" + data.text)
      } else if (data.id == "041") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;成果设置&gt;" + data.text)
      } else if (data.id == "042") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;成果设置&gt;" + data.text)
      } else if (data.id == "043") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;成果设置&gt;" + data.text)
      } else if (data.id == "044") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;成果设置&gt;" + data.text)
      } else if (data.id == "045") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;成果设置&gt;" + data.text)
      } else if (data.id == "046") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;成果设置&gt;" + data.text)
      } else if (data.id == "051") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;价值设置&gt;" + data.text)
      } else if (data.id == "052") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;价值设置&gt;" + data.text)
      } else if (data.id == "053") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;价值设置&gt;" + data.text)
      } else if (data.id == "054") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;价值设置&gt;" + data.text)
      } else if (data.id == "055") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;价值设置&gt;" + data.text)
      } else if (data.id == "056") {
        $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;价值设置&gt;" + data.text)
      }
    });

    // var obj = {};
    // obj.text = "123";
    // $("#btn").click(function (e) {
    //     var arr = $('#tree').treeview('getSelected');
    //     for (var key in arr) {
    //         c.innerHTML = c.innerHTML + "," + arr[key].id;
    //     }
    // })
  })

  function index1(value, row, index) {
    // alert( "Data Loaded: " + index );
    return index + 1
  }
  </script>
  <!--   <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
    <iframe src="/admin/01" name='main' frameborder="0"  width="100%" scrolling="no" marginheight="0" marginwidth="0" id="iframepage" onload="this.height=100"></iframe> 
  </div>  -->
  <script type="text/javascript">
  function reinitIframe() { //http://caibaojian.com/frame-adjust-content-height.html
    var iframe = document.getElementById("iframepage");
    try {
      var bHeight = iframe.contentWindow.document.body.scrollHeight;
      var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
      var height = Math.max(bHeight, dHeight, 800);
      iframe.height = height;
      // console.log(height);//这个显示老是在变化
    } catch (ex) {}
  }
  window.setInterval("reinitIframe()", 200);
  </script>
  <script src="/static/js/jquery.mCustomScrollbar.concat.min.js"></script>
  <script src="/static/js/custom.js"></script>
</body>

</html>