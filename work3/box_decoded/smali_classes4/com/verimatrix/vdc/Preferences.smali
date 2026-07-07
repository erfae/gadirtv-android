.class Lcom/verimatrix/vdc/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final KEY_FINISHED_WITH_CRASH:Ljava/lang/String; = "finished_with_crash"

.field private static final KEY_SENDING_IN_PROGRESS:Ljava/lang/String; = "sending_in_progress"

.field private static volatile instance:Lcom/verimatrix/vdc/Preferences;


# instance fields
.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".myverspective.vdc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/verimatrix/vdc/Preferences;->settings:Landroid/content/SharedPreferences;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/verimatrix/vdc/Preferences;
    .locals 2

    .line 25
    sget-object v0, Lcom/verimatrix/vdc/Preferences;->instance:Lcom/verimatrix/vdc/Preferences;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/verimatrix/vdc/Preferences;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/verimatrix/vdc/Preferences;->instance:Lcom/verimatrix/vdc/Preferences;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/verimatrix/vdc/Preferences;

    invoke-direct {v0, p0}, Lcom/verimatrix/vdc/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/verimatrix/vdc/Preferences;->instance:Lcom/verimatrix/vdc/Preferences;

    .line 32
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method isFinishedWithCrash()Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/verimatrix/vdc/Preferences;->settings:Landroid/content/SharedPreferences;

    const-string v1, "finished_with_crash"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isSendingInProgress()Z
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/verimatrix/vdc/Preferences;->settings:Landroid/content/SharedPreferences;

    const-string v1, "sending_in_progress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method setFinishedWithCrash(Z)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/verimatrix/vdc/Preferences;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "finished_with_crash"

    .line 73
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method setSendingInProgress(Z)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/verimatrix/vdc/Preferences;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sending_in_progress"

    .line 55
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
