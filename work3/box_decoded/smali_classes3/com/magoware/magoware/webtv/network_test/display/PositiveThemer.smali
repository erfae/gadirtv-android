.class Lcom/magoware/magoware/webtv/network_test/display/PositiveThemer;
.super Ljava/lang/Object;
.source "PositiveThemer.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/network_test/display/Themer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources;Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resources",
            "snackbar"
        }
    .end annotation

    .line 14
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    const v0, 0x7f0b05df

    .line 16
    invoke-virtual {p2, v0}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0601dc

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0601db

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->setBackgroundColor(I)V

    const v1, 0x7f0703e6

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f0703e5

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 24
    invoke-virtual {p2, p1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->setMinimumHeight(I)V

    return-void
.end method
