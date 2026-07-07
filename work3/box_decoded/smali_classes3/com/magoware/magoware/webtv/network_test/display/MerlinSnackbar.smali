.class Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;
.super Ljava/lang/Object;
.source "MerlinSnackbar.java"


# static fields
.field private static final EMPTY_MESSAGE:Ljava/lang/String; = ""

.field private static final SNACK_BAR_DURATION:I = 0x7d0


# instance fields
.field private final snackbar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method private constructor <init>(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snackbar"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method static withDuration(Landroid/view/View;)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attachTo"
        }
    .end annotation

    const-string v0, ""

    const/16 v1, 0x7d0

    .line 16
    invoke-static {p0, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    .line 17
    new-instance v0, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;-><init>(Lcom/google/android/material/snackbar/Snackbar;)V

    return-object v0
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    return-void
.end method

.method show()Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-object p0
.end method

.method withText(I)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageResource"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setText(I)Lcom/google/android/material/snackbar/Snackbar;

    return-object p0
.end method

.method withText(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    return-object p0
.end method

.method withTheme(Lcom/magoware/magoware/webtv/network_test/display/Themer;)Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "themer"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/network_test/display/MerlinSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-interface {p1, v0, v1}, Lcom/magoware/magoware/webtv/network_test/display/Themer;->applyTheme(Landroid/content/res/Resources;Lcom/google/android/material/snackbar/Snackbar;)V

    return-object p0
.end method
