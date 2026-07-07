.class public Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;
.super Landroid/app/Activity;
.source "ScheduleProgramActivity.java"


# instance fields
.field adult_channel_icon:Landroid/widget/ImageView;

.field adult_channel_name:Landroid/widget/TextView;

.field enter_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->setupListeners()V

    return-void
.end method

.method static synthetic lambda$setupListeners$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0e0039

    .line 33
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->setContentView(I)V

    const p1, 0x7f0b023c

    .line 34
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->enter_btn:Landroid/widget/Button;

    const p1, 0x7f0b00b3

    .line 35
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->adult_channel_icon:Landroid/widget/ImageView;

    const p1, 0x7f0b00b4

    .line 36
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->adult_channel_name:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->setupListeners()V

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

    .line 50
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 51
    const-class v0, Lcom/magoware/magoware/webtv/activities/PlayerActivity2;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->startActivity(Landroid/content/Intent;)V

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

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/activities/ScheduleProgramActivity;->enter_btn:Landroid/widget/Button;

    sget-object v1, Lcom/magoware/magoware/webtv/activities/-$$Lambda$ScheduleProgramActivity$YscfPi2euXKfpToXChkCUFBDjeA;->INSTANCE:Lcom/magoware/magoware/webtv/activities/-$$Lambda$ScheduleProgramActivity$YscfPi2euXKfpToXChkCUFBDjeA;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
