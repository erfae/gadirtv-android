.class public abstract Lcom/inka/ncg2/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static b:Z = true


# instance fields
.field protected a:Landroid/content/Context;

.field private c:Ljava/lang/Thread;

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/inka/ncg2/a/b;->c:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/inka/ncg2/a/b;->d:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inka/ncg2/a/b;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[clearPreviousLogCatProcessID] ++"

    .line 185
    invoke-static {v0}, Lcom/inka/ncg2/a/b;->c(Ljava/lang/String;)V

    const-string v0, "NCG2SDK"

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 187
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "LogCatPID"

    const/4 v1, -0x1

    .line 188
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p0, "[clearPreviousLogCatProcessID] --"

    .line 190
    invoke-static {p0}, Lcom/inka/ncg2/a/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1

    .line 247
    sget-boolean v0, Lcom/inka/ncg2/a/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "LogCatProcess"

    .line 248
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static f()V
    .locals 1

    const/4 v0, 0x1

    .line 239
    sput-boolean v0, Lcom/inka/ncg2/a/b;->b:Z

    return-void
.end method

.method public static g()V
    .locals 1

    const/4 v0, 0x0

    .line 243
    sput-boolean v0, Lcom/inka/ncg2/a/b;->b:Z

    return-void
.end method

.method private h()V
    .locals 3

    const-string v0, "[killPreviousLogCatProcess] ++"

    .line 194
    invoke-static {v0}, Lcom/inka/ncg2/a/b;->c(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/inka/ncg2/a/b;->a:Landroid/content/Context;

    const-string v1, "NCG2SDK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LogCatPID"

    const/4 v2, -0x1

    .line 197
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[killPreviousLogCatProcess] : PID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inka/ncg2/a/b;->c(Ljava/lang/String;)V

    if-lez v0, :cond_0

    .line 201
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    const-string v0, "[killPreviousLogCatProcess] --"

    .line 203
    invoke-static {v0}, Lcom/inka/ncg2/a/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/inka/ncg2/a/b;->f:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "java.lang.ProcessManager$ProcessImpl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pid"

    .line 216
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "id"

    .line 217
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 218
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/inka/ncg2/a/b;->f:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 222
    iget-object v4, p0, Lcom/inka/ncg2/a/b;->f:Ljava/lang/Process;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 232
    :goto_1
    iget-object v1, p0, Lcom/inka/ncg2/a/b;->a:Landroid/content/Context;

    const-string v3, "NCG2SDK"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 233
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LogCatPID"

    .line 234
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/inka/ncg2/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/inka/ncg2/a/b;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 48
    :cond_0
    iput-boolean v1, p0, Lcom/inka/ncg2/a/b;->d:Z

    .line 50
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/inka/ncg2/a/b;->c:Ljava/lang/Thread;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/inka/ncg2/a/b;->a:Landroid/content/Context;

    .line 25
    iget-object p1, p0, Lcom/inka/ncg2/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 3

    const-string v0, "NCG_Agent"

    const-string v1, "stopWatchLogcatDataThread() Called."

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/inka/ncg2/a/b;->d:Z

    .line 60
    iget-object v1, p0, Lcom/inka/ncg2/a/b;->f:Ljava/lang/Process;

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/inka/ncg2/a/b;->c:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 67
    iput-boolean v0, p0, Lcom/inka/ncg2/a/b;->d:Z

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/inka/ncg2/a/b;->c:Ljava/lang/Thread;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/inka/ncg2/a/b;->c:Ljava/lang/Thread;

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/inka/ncg2/a/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 77
    invoke-static {v0}, Lcom/inka/ncg2/a/b;->b(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public c()V
    .locals 3

    .line 84
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat"

    const-string v2, "-c"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 86
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public abstract d()Z
.end method

.method public e()V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/inka/ncg2/a/b;->b()V

    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "[logcatProcess] run() ++ "

    .line 110
    invoke-static {v0}, Lcom/inka/ncg2/a/b;->c(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/inka/ncg2/a/b;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 113
    iput-boolean v2, p0, Lcom/inka/ncg2/a/b;->d:Z

    .line 114
    iput-object v1, p0, Lcom/inka/ncg2/a/b;->c:Ljava/lang/Thread;

    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/inka/ncg2/a/b;->h()V

    .line 122
    iput-object v1, p0, Lcom/inka/ncg2/a/b;->f:Ljava/lang/Process;

    .line 124
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "logcat"

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-d"

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/inka/ncg2/a/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array v1, v2, [Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 129
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/inka/ncg2/a/b;->f:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 137
    :try_start_1
    invoke-direct {p0}, Lcom/inka/ncg2/a/b;->i()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/inka/ncg2/a/b;->f:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 147
    :goto_1
    iget-boolean v3, p0, Lcom/inka/ncg2/a/b;->d:Z

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x1

    .line 148
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    :catch_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x64

    .line 158
    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    nop

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {p0, v3}, Lcom/inka/ncg2/a/b;->b(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v3

    .line 152
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 171
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    :goto_2
    iput-boolean v2, p0, Lcom/inka/ncg2/a/b;->d:Z

    return-void

    :catch_5
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
