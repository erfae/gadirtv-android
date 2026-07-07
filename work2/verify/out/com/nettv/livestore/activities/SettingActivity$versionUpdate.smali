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
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    .line 1
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    :try_start_3
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_ce
    .catchall {:try_start_3 .. :try_end_11} :catchall_c9

    const v1, 0xea60

    .line 4
    :try_start_14
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 6
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_c4
    .catchall {:try_start_14 .. :try_end_22} :catchall_c1

    .line 8
    :try_start_22
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

    if-lt v6, v7, :cond_5e

    .line 11
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/nettv/livestore/apps/LTVApp;->getInstance()Lcom/nettv/livestore/apps/LTVApp;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    goto :goto_65

    .line 12
    :cond_5e
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    .line 13
    :goto_65
    iget-object v4, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 14
    iget-object v4, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 15
    :cond_72
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_79} :catch_be
    .catchall {:try_start_22 .. :try_end_79} :catchall_bc

    const/16 v5, 0x1000

    :try_start_7b
    new-array v5, v5, [B

    const-wide/16 v6, 0x0

    .line 16
    :goto_7f
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_b2

    .line 17
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_97

    .line 18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8f} :catch_ba
    .catchall {:try_start_7b .. :try_end_8f} :catchall_b6

    .line 19
    :try_start_8f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 20
    :goto_92
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_95} :catch_e9

    goto/16 :goto_e9

    :cond_97
    int-to-long v9, v8

    add-long/2addr v6, v9

    if-lez v1, :cond_ae

    const/4 v9, 0x1

    :try_start_9c
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
    :cond_ae
    invoke-virtual {v4, v5, v2, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_b1} :catch_ba
    .catchall {:try_start_9c .. :try_end_b1} :catchall_b6

    goto :goto_7f

    .line 23
    :cond_b2
    :try_start_b2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_e9

    goto :goto_92

    :catchall_b6
    move-exception v0

    move-object v1, v0

    :goto_b8
    move-object v0, v4

    goto :goto_ef

    :catch_ba
    move-exception v0

    goto :goto_d3

    :catchall_bc
    move-exception v1

    goto :goto_ef

    :catch_be
    move-exception v1

    move-object v4, v0

    goto :goto_c7

    :catchall_c1
    move-exception v1

    move-object v3, v0

    goto :goto_ef

    :catch_c4
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_c7
    move-object v0, v1

    goto :goto_d3

    :catchall_c9
    move-exception p1

    move-object v1, p1

    move-object p1, v0

    move-object v3, p1

    goto :goto_ef

    :catch_ce
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    move-object v0, p1

    move-object p1, v4

    .line 24
    :goto_d3
    :try_start_d3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_ed

    if-eqz v4, :cond_e2

    .line 26
    :try_start_dc
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_e2

    :catch_e0
    nop

    goto :goto_e7

    :cond_e2
    :goto_e2
    if-eqz v3, :cond_e7

    .line 27
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e7} :catch_e0

    :cond_e7
    :goto_e7
    if-eqz p1, :cond_ec

    .line 28
    :catch_e9
    :goto_e9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ec
    return-object v0

    :catchall_ed
    move-exception v1

    goto :goto_b8

    :goto_ef
    if-eqz v0, :cond_f7

    .line 29
    :try_start_f1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_f7

    :catch_f5
    nop

    goto :goto_fc

    :cond_f7
    :goto_f7
    if-eqz v3, :cond_fc

    .line 30
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_fc} :catch_f5

    :cond_fc
    :goto_fc
    if-eqz p1, :cond_101

    .line 31
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 32
    :cond_101
    throw v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_20

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

    goto :goto_27

    .line 4
    :cond_20
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;->file:Ljava/io/File;

    # invokes: Lcom/nettv/livestore/activities/SettingActivity;->startInstall(Ljava/io/File;)V
    invoke-static {p1, v0}, Lcom/nettv/livestore/activities/SettingActivity;->access$000(Lcom/nettv/livestore/activities/SettingActivity;Ljava/io/File;)V

    :goto_27
    return-void
.end method

.method public final onPreExecute()V
    .registers 3

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
    .registers 5

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
