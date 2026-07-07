.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "PinActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$MyGestureDetector;
    }
.end annotation


# instance fields
.field private enteredPassword:Ljava/lang/String;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private passwordField:Landroid/widget/EditText;

.field private pin:Ljava/lang/String;

.field private wrongPass:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->pin:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->validatePin()V

    return-void
.end method

.method static synthetic access$102(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->enteredPassword:Ljava/lang/String;

    return-object p1
.end method

.method private validatePin()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->enteredPassword:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->pin:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->enteredPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->wrongPass:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->enteredPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->finish()V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->wrongPass:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->wrongPass:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140499

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 36
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$PinActivity(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->wrongPass:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$PinActivity(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->validatePin()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$PinActivity(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->wrongPass:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 44
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x7f0e01a0

    .line 45
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "passwordDialogTitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b04e0

    .line 47
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    const v1, 0x7f0b0205

    .line 49
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0b070a

    .line 53
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->wrongPass:Landroid/widget/TextView;

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->enteredPassword:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$MyGestureDetector;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$MyGestureDetector;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->gestureDetector:Landroid/view/GestureDetector;

    const v0, 0x7f0b0115

    .line 58
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b010f

    .line 59
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0b010e

    .line 60
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 62
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 63
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 64
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 65
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isAmazonFireTv()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    const/16 v3, 0xe1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-instance v3, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$1;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$1;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 79
    new-instance p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PinActivity$BfF8V6T45l-pPCJfVnFeqoijNpY;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PinActivity$BfF8V6T45l-pPCJfVnFeqoijNpY;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PinActivity$qKfaZ2N8VcPOLuts4zvSZ0GLn8o;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PinActivity$qKfaZ2N8VcPOLuts4zvSZ0GLn8o;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PinActivity$JDQMwASMX0MUhXqMRsTLaOPcoU4;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PinActivity$JDQMwASMX0MUhXqMRsTLaOPcoU4;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key_code",
            "event"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x43

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 160
    :pswitch_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%s9"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 156
    :pswitch_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%s8"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 152
    :pswitch_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%s7"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 148
    :pswitch_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%s6"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 144
    :pswitch_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%s5"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 140
    :pswitch_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%s4"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 136
    :pswitch_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%s3"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 132
    :pswitch_7
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%s2"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 128
    :pswitch_8
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%s1"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 124
    :pswitch_9
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%s0"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->passwordField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return v1

    .line 168
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->validatePin()V

    return v1

    :cond_3
    const-string p1, "exit"

    .line 172
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->enteredPassword:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->finish()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected onStop()V
    .locals 1

    const-string v0, "exit"

    .line 115
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->enteredPassword:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->finish()V

    .line 117
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "me"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
