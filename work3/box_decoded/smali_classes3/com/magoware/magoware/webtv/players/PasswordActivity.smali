.class public Lcom/magoware/magoware/webtv/players/PasswordActivity;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "PasswordActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/PasswordActivity$MyGestureDetector;
    }
.end annotation


# static fields
.field public static password_dialog_title:Ljava/lang/String; = ""

.field public static password_entered:Ljava/lang/String;


# instance fields
.field public button_clear:Landroid/widget/Button;

.field public button_eight:Landroid/widget/Button;

.field public button_five:Landroid/widget/Button;

.field public button_four:Landroid/widget/Button;

.field public button_nine:Landroid/widget/Button;

.field public button_ok:Landroid/widget/Button;

.field public button_one:Landroid/widget/Button;

.field public button_seven:Landroid/widget/Button;

.field public button_six:Landroid/widget/Button;

.field public button_three:Landroid/widget/Button;

.field public button_two:Landroid/widget/Button;

.field public button_zero:Landroid/widget/Button;

.field public channel_icon_adult:Landroid/widget/ImageView;

.field private dialog_title:Landroid/widget/TextView;

.field public gestureDetector:Landroid/view/GestureDetector;

.field public gestureListener:Landroid/view/View$OnTouchListener;

.field private password_field:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$PasswordActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$onCreate$1$PasswordActivity(Landroid/view/View;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$10$PasswordActivity(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$11$PasswordActivity(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$12$PasswordActivity(Landroid/view/View;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$PasswordActivity(Landroid/view/View;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$3$PasswordActivity(Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$4$PasswordActivity(Landroid/view/View;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$5$PasswordActivity(Landroid/view/View;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$6$PasswordActivity(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$7$PasswordActivity(Landroid/view/View;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$8$PasswordActivity(Landroid/view/View;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$9$PasswordActivity(Landroid/view/View;)V
    .locals 2

    .line 104
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    const v0, 0x7f0e019d

    .line 37
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->setContentView(I)V

    .line 39
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    const-class v2, Lcom/magoware/magoware/webtv/players/PasswordActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b0159

    .line 41
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->channel_icon_adult:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password_dialog_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_dialog_title:Ljava/lang/String;

    const v0, 0x7f0b04e0

    .line 43
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    const v0, 0x7f0b0205

    .line 44
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->dialog_title:Landroid/widget/TextView;

    .line 45
    sget-object v1, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_dialog_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 46
    sput-object v0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL_Icon_Number:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 50
    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f080347

    .line 55
    :try_start_0
    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    const-string v2, "Image"

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->channel_icon_adult:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->channel_icon_adult:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->channel_icon_adult:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/magoware/magoware/webtv/players/PasswordActivity$MyGestureDetector;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/PasswordActivity$MyGestureDetector;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 69
    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$I4EzoIBvn1ylfeLqZVFpP2eMRSQ;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$I4EzoIBvn1ylfeLqZVFpP2eMRSQ;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->gestureListener:Landroid/view/View$OnTouchListener;

    const v0, 0x7f0b011d

    .line 71
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_zero:Landroid/widget/Button;

    const v0, 0x7f0b0116

    .line 72
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_one:Landroid/widget/Button;

    const v0, 0x7f0b011c

    .line 73
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_two:Landroid/widget/Button;

    const v0, 0x7f0b011b

    .line 74
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_three:Landroid/widget/Button;

    const v0, 0x7f0b0112

    .line 75
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_four:Landroid/widget/Button;

    const v0, 0x7f0b0111

    .line 76
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_five:Landroid/widget/Button;

    const v0, 0x7f0b0119

    .line 77
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_six:Landroid/widget/Button;

    const v0, 0x7f0b0118

    .line 78
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_seven:Landroid/widget/Button;

    const v0, 0x7f0b0110

    .line 79
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_eight:Landroid/widget/Button;

    const v0, 0x7f0b0114

    .line 80
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_nine:Landroid/widget/Button;

    const v0, 0x7f0b0115

    .line 81
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_ok:Landroid/widget/Button;

    const v0, 0x7f0b010f

    .line 82
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_clear:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_ok:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 85
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 86
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_ok:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocusFromTouch()Z

    .line 88
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_zero:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$Gww2uWrx5mbJhpyDRYtnWIKIMx4;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$Gww2uWrx5mbJhpyDRYtnWIKIMx4;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_one:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$GWNEYRZulx92AhF1q7rBhzwBKsU;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$GWNEYRZulx92AhF1q7rBhzwBKsU;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_two:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$jNePNyOZHOmYB-FxfZXmjDYKWJg;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$jNePNyOZHOmYB-FxfZXmjDYKWJg;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_three:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$HhZ9SQyCk_3XkpL3T2oM5g15m9E;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$HhZ9SQyCk_3XkpL3T2oM5g15m9E;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_four:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$m-Zb3CXCkPzIKRiNAtKxSwkScb8;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$m-Zb3CXCkPzIKRiNAtKxSwkScb8;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_five:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$P5mqAEoA7a7SeGgDbRltepR4nfI;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$P5mqAEoA7a7SeGgDbRltepR4nfI;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_six:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$Dj6XWVuiOvROuc1N3bPoN5vMV_0;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$Dj6XWVuiOvROuc1N3bPoN5vMV_0;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_seven:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$9vT3qwHvHUgCC8f57uyIUtuOCWg;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$9vT3qwHvHUgCC8f57uyIUtuOCWg;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_eight:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$cusD2IeCXi08SfgBJyoW_G578IY;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$cusD2IeCXi08SfgBJyoW_G578IY;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_nine:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$-iRPFBkt30qLekMnZbYXNMyfNV4;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$-iRPFBkt30qLekMnZbYXNMyfNV4;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_clear:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$-gWf2FlXi_2wggringE285M9czw;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$-gWf2FlXi_2wggringE285M9czw;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->button_ok:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$z2dPb-_kdtDLvt0yKYJplRlRbBY;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$PasswordActivity$z2dPb-_kdtDLvt0yKYJplRlRbBY;-><init>(Lcom/magoware/magoware/webtv/players/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const-string v1, "exit"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x42

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 224
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 203
    :pswitch_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "9"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 199
    :pswitch_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "8"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 195
    :pswitch_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "7"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 191
    :pswitch_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "6"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 187
    :pswitch_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "5"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 183
    :pswitch_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "4"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 179
    :pswitch_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "3"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 175
    :pswitch_7
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 171
    :pswitch_8
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 167
    :pswitch_9
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return v1

    .line 212
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_field:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->finish()V

    return v1

    .line 216
    :cond_3
    sput-object v1, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->finish()V

    return v2

    .line 220
    :cond_4
    sput-object v1, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->finish()V

    return v2

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

    .line 128
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 121
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onResume()V

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

    .line 133
    sput-object v0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->password_entered:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/PasswordActivity;->finish()V

    .line 135
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStop()V

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

    .line 231
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/PasswordActivity;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
