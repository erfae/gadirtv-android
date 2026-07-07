.class public Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "PasswordPromptDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$CurrentChannelListener;,
        Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;
    }
.end annotation


# instance fields
.field private adult_channel_icon:Landroid/widget/ImageView;

.field private adult_channel_name:Landroid/widget/TextView;

.field private currentChannelListener:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$CurrentChannelListener;

.field public enter_button:Landroid/widget/Button;

.field private mListener:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;

.field public nxt_channel:Landroid/widget/ImageView;

.field public prev_channel:Landroid/widget/ImageView;

.field private previous_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 60
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onViewCreated$0$PasswordPromptDialog(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x13

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 110
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 111
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->mListener:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->nxt_channel:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;->onViewClickedPassword(Landroid/view/View;)V

    .line 112
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->dismiss()V

    return v0

    :cond_2
    const/16 v1, 0x14

    if-ne p2, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 114
    :goto_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 115
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->mListener:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->prev_channel:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;->onViewClickedPassword(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->dismiss()V

    return v0

    :cond_5
    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    .line 118
    :goto_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_7

    const/4 p3, 0x1

    goto :goto_5

    :cond_7
    const/4 p3, 0x0

    :goto_5
    and-int/2addr p2, p3

    if-eqz p2, :cond_9

    .line 119
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->previous_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-nez p1, :cond_8

    .line 120
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->dismiss()V

    .line 121
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->mListener:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;->onViewClickedPassword(Landroid/view/View;)V

    return v0

    .line 124
    :cond_8
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->currentChannelListener:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$CurrentChannelListener;

    invoke-interface {p2, p1}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$CurrentChannelListener;->onCurrentChannelChanged(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    .line 126
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->dismiss()V

    return v0

    :cond_9
    return p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 157
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 159
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->mListener:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 161
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnCompleteListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->mListener:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$ViewClickedListener;->onViewClickedPassword(Landroid/view/View;)V

    .line 152
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e019e

    .line 68
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 144
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 73
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->setCancelable(Z)V

    const v0, 0x7f0b023c

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->enter_button:Landroid/widget/Button;

    const v0, 0x7f0b00b3

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->adult_channel_icon:Landroid/widget/ImageView;

    const v0, 0x7f0b00b4

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->adult_channel_name:Landroid/widget/TextView;

    const v0, 0x7f0b04a9

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->nxt_channel:Landroid/widget/ImageView;

    const v0, 0x7f0b050d

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->prev_channel:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->nxt_channel:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->enter_button:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL_Icon_Number:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 87
    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const p2, 0x7f080347

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    const-string v1, "Image"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->adult_channel_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->adult_channel_icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->adult_channel_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 105
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->adult_channel_name:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string p2, "PinDialog"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordPromptDialog$dm0k4MV0RI7C1N_uRtELpQvEZoY;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordPromptDialog$dm0k4MV0RI7C1N_uRtELpQvEZoY;-><init>(Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 138
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->enter_button:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 139
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->enter_button:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocusFromTouch()Z

    return-void
.end method

.method public setCurrentChannelListener(Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$CurrentChannelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentChannelListener"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->currentChannelListener:Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$CurrentChannelListener;

    return-void
.end method

.method public setPreviousChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previous_playing_channel"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;->previous_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-void
.end method
