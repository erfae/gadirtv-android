.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;
.super Landroid/app/DialogFragment;
.source "ScheduleEpgFragmentDialog.java"


# static fields
.field private static buttonToDisplay:Ljava/lang/String;

.field private static catchup:Ljava/lang/String;

.field public static channel_icon:Ljava/lang/String;

.field private static descToDisplay:Ljava/lang/String;

.field private static generToDisplay:Ljava/lang/String;

.field private static mEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

.field private static mMessageToDisplay:Ljava/lang/String;

.field public static program_ID:Ljava/lang/String;

.field public static titleToDisplay:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private bus:Lde/greenrobot/event/EventBus;

.field cancel_btn:Landroid/widget/Button;

.field desc:Landroid/widget/TextView;

.field descriptionHeavy:Landroid/widget/TextView;

.field gener:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field ok_btn:Landroid/widget/Button;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->bus:Lde/greenrobot/event/EventBus;

    const-string v0, "ScheduleEpgFragmentDialog "

    .line 51
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "args",
            "message",
            "title",
            "gener",
            "desc",
            "future",
            "catchUp",
            "Id",
            "event"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;-><init>()V

    .line 55
    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 56
    sput-object p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->mMessageToDisplay:Ljava/lang/String;

    .line 58
    sput-object p2, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->titleToDisplay:Ljava/lang/String;

    .line 59
    sput-object p3, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->generToDisplay:Ljava/lang/String;

    .line 60
    sput-object p4, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->descToDisplay:Ljava/lang/String;

    .line 61
    sput-object p7, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->program_ID:Ljava/lang/String;

    .line 62
    sput-object p5, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->buttonToDisplay:Ljava/lang/String;

    .line 63
    sput-object p6, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->catchup:Ljava/lang/String;

    .line 64
    sput-object p8, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->mEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onViewCreated$0$ScheduleEpgFragmentDialog(Landroid/view/View;)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->bus:Lde/greenrobot/event/EventBus;

    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->mEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->bus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent;

    sget-object v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->buttonToDisplay:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$1$ScheduleEpgFragmentDialog(Landroid/view/View;)V
    .locals 0

    .line 151
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 152
    sput-object p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$2$ScheduleEpgFragmentDialog(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 159
    sput-object p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 160
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 74
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 76
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p3, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 78
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0e0039

    .line 79
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const p3, 0x7f0e003b

    .line 81
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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

    .line 86
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v0, "fonts/Avenir-Medium.ttf"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 89
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Avenir-Heavy.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0b065f

    .line 90
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->title:Landroid/widget/TextView;

    .line 91
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0b02d8

    .line 92
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->gener:Landroid/widget/TextView;

    .line 93
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0b01e7

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->desc:Landroid/widget/TextView;

    .line 95
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0b01ea

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->descriptionHeavy:Landroid/widget/TextView;

    .line 97
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f140450

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->titleToDisplay:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->gener:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1401cd

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->generToDisplay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->desc:Landroid/widget/TextView;

    sget-object v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->descToDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->desc:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0b046d

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->icon:Landroid/widget/ImageView;

    .line 109
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    const-string v1, "Image"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channel_icon2:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channel_icon2:Ljava/lang/String;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0802eb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 120
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->channel_icon:Ljava/lang/String;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 126
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b04c0

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->ok_btn:Landroid/widget/Button;

    .line 129
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->buttonToDisplay:Ljava/lang/String;

    const-string v1, "future"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->buttonToDisplay:Ljava/lang/String;

    const-string v2, "live"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 132
    :cond_2
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->catchup:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->ok_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->ok_btn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 131
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->ok_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->ok_btn:Landroid/widget/Button;

    sget-object v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->mMessageToDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->ok_btn:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$ScheduleEpgFragmentDialog$AfqYxi_Gqyk1PIGQ7VNLt2keJek;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$ScheduleEpgFragmentDialog$AfqYxi_Gqyk1PIGQ7VNLt2keJek;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b011f

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->cancel_btn:Landroid/widget/Button;

    .line 149
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 150
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->cancel_btn:Landroid/widget/Button;

    new-instance p2, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$ScheduleEpgFragmentDialog$557CNWTR6Aa06R72Va5XBZMtbM0;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$ScheduleEpgFragmentDialog$557CNWTR6Aa06R72Va5XBZMtbM0;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 157
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$ScheduleEpgFragmentDialog$kB_5jJ4YC4ErpbXBUif1BKUud7w;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$ScheduleEpgFragmentDialog$kB_5jJ4YC4ErpbXBUif1BKUud7w;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 166
    :cond_5
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 167
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->cancel_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    :cond_7
    return-void
.end method
