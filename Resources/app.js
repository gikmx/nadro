(function() {
  var dashboardTab, dashboardWin, laboratoryTab, laboratoryWindow, tabGroup;

  tabGroup = Titanium.UI.createTabGroup();

  dashboardWin = Titanium.UI.createWindow({
    title: "Dashboard",
    backgroundColor: "blue"
  });

  dashboardWin.open();

  dashboardTab = Titanium.UI.createTab({
    icon: "KS_nav_ui-png",
    title: "Dashboard",
    window: dashboardWin
  });

  laboratoryWindow = Titanium.UI.createWindow({
    title: "Laboratorio",
    url: "lab.js"
  });

  laboratoryTab = Titanium.UI.createTab({
    icon: "KS_nav_ui-png",
    title: "Labotario",
    window: laboratoryWindow
  });

  tabGroup.addTab(dashboardTab);

  tabGroup.addTab(laboratoryTab);

  tabGroup.open();

}).call(this);
