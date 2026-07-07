.class public Lcom/magoware/magoware/webtv/activities/AppRater;
.super Ljava/lang/Object;
.source "AppRater.java"


# static fields
.field private static final APP_PNAME:Ljava/lang/String; = "com.magoware.magoware.MobileWebTv"

.field private static final APP_TITLE:Ljava/lang/String; = "MagoWare"

.field private static final DAYS_UNTIL_PROMPT:I = 0x0

.field private static final LAUNCHES_UNTIL_PROMPT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static app_launched(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
        }
    .end annotation

    const-string v0, "apprater"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "dontshowagain"

    .line 25
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "launch_count"

    const-wide/16 v3, 0x0

    .line 31
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 32
    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "date_firstlaunch"

    .line 35
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-nez v9, :cond_1

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-wide/16 v2, 0x3

    cmp-long v4, v5, v2

    if-ltz v4, :cond_2

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 45
    invoke-static {p0, v1}, Lcom/magoware/magoware/webtv/activities/AppRater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    .line 49
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic lambda$showRateDialog$0(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 68
    new-instance p2, Landroid/content/Intent;

    const-string v0, "https://play.google.com/store/apps/details?id=com.magoware.magoware.MobileWebTv"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showRateDialog$1(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showRateDialog$2(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    const-string v0, "dontshowagain"

    .line 82
    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mContext",
            "editor"
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v1, "Rate MagoWare"

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "If you enjoy using MagoWare, please take a moment to rate it. Thanks for your support!"

    .line 60
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0xf0

    .line 61
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0xa

    .line 62
    invoke-virtual {v3, v4, v5, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v1, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$HPNjcVP4EEtTf6ejritoNPrwFYg;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$HPNjcVP4EEtTf6ejritoNPrwFYg;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "Remind me later"

    .line 74
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v3, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$UxLwknTPSZ_DZT1B-NTk02qhiVI;

    invoke-direct {v3, v0}, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$UxLwknTPSZ_DZT1B-NTk02qhiVI;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string p0, "No, thanks"

    .line 79
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance p0, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$tOtOjNlSqHVqfFsx95b2ukPW648;

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$tOtOjNlSqHVqfFsx95b2ukPW648;-><init>(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 90
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
