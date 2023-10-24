function openProfileWindow() {
    var profileWindow = window.open("profile.jsp", "Profile", "width=400,height=300,top=200,left=200");
    profileWindow.document.title = "Profile";
    profileWindow.document.body.style.margin = "0";
    profileWindow.document.body.style.backgroundColor = "#fff";
}