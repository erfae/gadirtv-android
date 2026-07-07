.class public Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "PasswordDialogActivity.java"


# instance fields
.field adult_channel_icon:Landroid/widget/ImageView;

.field adult_channel_name:Landroid/widget/TextView;

.field enter_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->setupListeners()V

    return-void
.end method

.method static synthetic lambda$setupListeners$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 40
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0e019e

    .line 44
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->setContentView(I)V

    const p1, 0x7f0b023c

    .line 46
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->enter_btn:Landroid/widget/Button;

    const p1, 0x7f0b00b3

    .line 47
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->adult_channel_icon:Landroid/widget/ImageView;

    const p1, 0x7f0b00b4

    .line 48
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->adult_channel_name:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->setupListeners()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 82
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 83
    const-class v0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->startActivity(Landroid/content/Intent;)V

    return p2

    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    return p2

    :cond_1
    const/16 v0, 0x17

    if-eq p1, v0, :cond_5

    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x15

    if-ne p1, v0, :cond_3

    return p2

    :cond_3
    const/16 v0, 0x16

    if-ne p1, v0, :cond_4

    return p2

    :cond_4
    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_0
    return p2
.end method

.method public setupListeners()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->enter_btn:Landroid/widget/Button;

    sget-object v1, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$PasswordDialogActivity$hyJu_h7w0OZ36IznB3j0FpaBjAQ;->INSTANCE:Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$PasswordDialogActivity$hyJu_h7w0OZ36IznB3j0FpaBjAQ;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showPasswordPromptDialog(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adult_channel"
        }
    .end annotation

    const v0, 0x7f080347

    .line 61
    :try_start_0
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    const-string v2, "Image"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->adult_channel_icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->adult_channel_icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->adult_channel_icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->adult_channel_name:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->enter_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 73
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/PasswordDialogActivity;->enter_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocusFromTouch()Z

    return-void
.end method
