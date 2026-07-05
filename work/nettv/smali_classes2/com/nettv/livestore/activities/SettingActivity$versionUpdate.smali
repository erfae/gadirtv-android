.class Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;
.super Landroid/os/AsyncTask;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/activities/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "versionUpdate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public final synthetic this$0:Lcom/nettv/livestore/activities/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const v1, 0xea60

    .line 4
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 6
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 8
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.nettv.livestore.apk"

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_0

    .line 11
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/nettv/livestore/apps/LTVApp;->getInstance()Lcom/nettv/livestore/apps/LTVApp;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    goto :goto_0

    .line 12
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    .line 13
    :goto_0
    iget-object v4, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    iget-object v4, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 15
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v5, 0x1000

    :try_start_3
    new-array v5, v5, [B

    const-wide/16 v6, 0x0

    .line 16
    :goto_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 17
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 20
    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_8

    :cond_2
    int-to-long v9, v8

    add-long/2addr v6, v9

    if-lez v1, :cond_3

    const/4 v9, 0x1

    :try_start_5
    new-array v9, v9, [Ljava/lang/Integer;

    const-wide/16 v10, 0x64

    mul-long v10, v10, v6

    int-to-long v12, v1

    .line 21
    div-long/2addr v10, v12

    long-to-int v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {p0, v9}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 22
    :cond_3
    invoke-virtual {v4, v5, v2, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 23
    :cond_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_3
    move-object v0, v4

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    move-object v4, v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v3, v0

    goto :goto_9

    :catch_2
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_4
    move-object v0, v1

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v1, p1

    move-object p1, v0

    move-object v3, p1

    goto :goto_9

    :catch_3
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    move-object v0, p1

    move-object p1, v4

    .line 24
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_5

    .line 26
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    :catch_4
    nop

    goto :goto_7

    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 27
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_7
    if-eqz p1, :cond_7

    .line 28
    :catch_5
    :goto_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object v0

    :catchall_4
    move-exception v1

    goto :goto_3

    :goto_9
    if-eqz v0, :cond_8

    .line 29
    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_a

    :catch_6
    nop

    goto :goto_b

    :cond_8
    :goto_a
    if-eqz v3, :cond_9

    .line 30
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_9
    :goto_b
    if-eqz p1, :cond_a

    .line 31
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 32
    :cond_a
    throw v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getUpdate_failed()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/nettv/livestore/activities/SettingActivity;->access$000(Lcom/nettv/livestore/activities/SettingActivity;Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    iget-object v1, v1, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getRequest_download()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final onProgressUpdate([Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
