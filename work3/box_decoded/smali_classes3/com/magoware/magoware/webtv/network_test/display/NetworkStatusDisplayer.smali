.class public Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;
.super Ljava/lang/Object;
.source "NetworkStatusDisplayer.java"


# instance fields
.field private final merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

.field private final resources:Landroid/content/res/Resources;

.field private snackbar:Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/novoda/merlin/MerlinsBeard;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resources",
            "merlinsBeard"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->resources:Landroid/content/res/Resources;

    .line 21
    iput-object p2, p0, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

    return-void
.end method

.method private subtypeAbsent(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subtype"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private subtypeMessageFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subtype"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->subtypeAbsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->resources:Landroid/content/res/Resources;

    const v0, 0x7f140423

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->resources:Landroid/content/res/Resources;

    const v1, 0x7f140424

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private subtypeThemerFrom(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network_test/display/Themer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subtype"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->subtypeAbsent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    new-instance p1, Lcom/magoware/magoware/webtv/network_test/display/NegativeThemer;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/network_test/display/NegativeThemer;-><init>()V

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Lcom/magoware/magoware/webtv/network_test/display/PositiveThemer;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/network_test/display/PositiveThemer;-><init>()V

    return-object p1
.end method


# virtual methods
.method public displayNegativeMessage(ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageResource",
            "attachTo"
        }
    .end annotation

    .line 32
    invoke-static {p2}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->withDuration(Landroid/view/View;)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p2

    .line 33
    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->withText(I)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network_test/display/NegativeThemer;

    invoke-direct {p2}, Lcom/magoware/magoware/webtv/network_test/display/NegativeThemer;-><init>()V

    .line 34
    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->withTheme(Lcom/magoware/magoware/webtv/network_test/display/Themer;)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->show()Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->snackbar:Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    return-void
.end method

.method public displayNetworkSubtype(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attachTo"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

    invoke-virtual {v0}, Lcom/novoda/merlin/MerlinsBeard;->getMobileNetworkSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p1}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->withDuration(Landroid/view/View;)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p1

    .line 41
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->subtypeMessageFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->withText(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p1

    .line 42
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->subtypeThemerFrom(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network_test/display/Themer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->withTheme(Lcom/magoware/magoware/webtv/network_test/display/Themer;)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->show()Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->snackbar:Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    return-void
.end method

.method public displayPositiveMessage(ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageResource",
            "attachTo"
        }
    .end annotation

    .line 25
    invoke-static {p2}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->withDuration(Landroid/view/View;)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p2

    .line 26
    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->withText(I)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network_test/display/PositiveThemer;

    invoke-direct {p2}, Lcom/magoware/magoware/webtv/network_test/display/PositiveThemer;-><init>()V

    .line 27
    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->withTheme(Lcom/magoware/magoware/webtv/network_test/display/Themer;)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->show()Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->snackbar:Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->snackbar:Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->dismiss()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network_test/display/NetworkStatusDisplayer;->snackbar:Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    return-void
.end method
