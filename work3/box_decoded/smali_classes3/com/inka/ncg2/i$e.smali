.class Lcom/inka/ncg2/i$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/i;


# direct methods
.method private constructor <init>(Lcom/inka/ncg2/i;)V
    .locals 0

    .line 2760
    iput-object p1, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inka/ncg2/i;Lcom/inka/ncg2/i$1;)V
    .locals 0

    .line 2760
    invoke-direct {p0, p1}, Lcom/inka/ncg2/i$e;-><init>(Lcom/inka/ncg2/i;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const-string p1, "initSecureTimeAndCheckAppID() Fail!"

    const-string v0, "NCG_Agent"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2765
    :try_start_0
    iget-object v3, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-static {v3}, Lcom/inka/ncg2/i;->d(Lcom/inka/ncg2/i;)Z

    move-result v3
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 2778
    iget-object p1, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-static {p1, v2}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;Z)Z

    return-object v1

    .line 2770
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-virtual {v3}, Lcom/inka/ncg2/i;->updateSecureTime()V
    :try_end_1
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2778
    :goto_0
    iget-object p1, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-static {p1, v2}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;Z)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 2775
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2776
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 2772
    invoke-virtual {v3}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 2773
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-object v1

    .line 2778
    :goto_2
    iget-object v0, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-static {v0, v2}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;Z)Z

    throw p1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 8

    .line 2785
    iget-object v0, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->e(Lcom/inka/ncg2/i;)Ljava/util/TimerTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2786
    iget-object v0, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    new-instance v1, Lcom/inka/ncg2/i$e$1;

    invoke-direct {v1, p0}, Lcom/inka/ncg2/i$e$1;-><init>(Lcom/inka/ncg2/i$e;)V

    invoke-static {v0, v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 2794
    iget-object v0, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;Ljava/util/Timer;)Ljava/util/Timer;

    const v0, 0xea60

    .line 2796
    iget-object v1, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-static {v1}, Lcom/inka/ncg2/i;->f(Lcom/inka/ncg2/i;)Ljava/util/Timer;

    move-result-object v2

    iget-object v1, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-static {v1}, Lcom/inka/ncg2/i;->e(Lcom/inka/ncg2/i;)Ljava/util/TimerTask;

    move-result-object v3

    int-to-long v6, v0

    move-wide v4, v6

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2797
    iget-object v0, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;Lcom/inka/ncg2/i$e;)Lcom/inka/ncg2/i$e;

    .line 2800
    :cond_0
    iget-object v0, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    iget-object v0, v0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v0, :cond_1

    .line 2801
    iget-object v0, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    iget-object v0, v0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NCG SDK Initialized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-static {v2}, Lcom/inka/ncg2/i;->g(Lcom/inka/ncg2/i;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->log(Ljava/lang/String;)V

    .line 2802
    iget-object v0, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    iget-object v0, v0, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    const-string v1, "NCG SDK Version : 20190508"

    invoke-interface {v0, v1}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->log(Ljava/lang/String;)V

    .line 2804
    :cond_1
    iget-object v0, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;Z)Z

    .line 2805
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2760
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/inka/ncg2/i$e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2760
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/inka/ncg2/i$e;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 2810
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2811
    iget-object v0, p0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;Z)Z

    return-void
.end method
