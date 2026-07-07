.class Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;
.super Landroid/os/AsyncTask;
.source "DownloadNcgFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final MB1:I = 0x100051

.field static final MB100:I = 0x6401fa4

.field static final NOTIFY_ID_ACQUIRED_DOWNLOAD_URL:I = 0x1

.field static final NOTIFY_ID_DOWNLOAD_STATE_UPDATE:I = 0x2


# instance fields
.field private mActivity:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

.field private mCancelDownload:Z

.field private mDestFilePath:Ljava/lang/String;

.field private mDownlaodedSize:Ljava/lang/String;

.field private mDownloadPercent:I

.field private mExeptionMsg:Ljava/lang/String;

.field private mGlobal:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

.field private mNcgFileDownloadURL:Ljava/lang/String;

.field private mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

.field private mRemoteFileSizeForDisplay:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "source",
            "filePath"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    new-instance v0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;-><init>(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    .line 52
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->getInstance()Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mGlobal:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    .line 55
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mActivity:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    .line 56
    iput-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mNcgFileDownloadURL:Ljava/lang/String;

    .line 57
    invoke-static {p3}, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary;->getFilenameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mNcgFileNameForDownloading:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDestFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;)Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    return-object p0
.end method

.method private downloadNCG2File(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadURL",
            "destFilePath"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 105
    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 107
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 108
    new-instance v6, Ljava/net/URI;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    const-string v6, "Connection"

    const-string v7, "close"

    .line 109
    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    .line 115
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v8

    :goto_0
    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    const-string v11, "Range"

    .line 119
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 123
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 125
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v11, 0x1a0

    const/4 v12, 0x1

    if-ne v5, v11, :cond_3

    if-eqz v3, :cond_2

    .line 208
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 211
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return v12

    :cond_3
    const/16 v11, 0xc8

    if-eq v5, v11, :cond_5

    const/16 v11, 0xce

    if-eq v5, v11, :cond_5

    .line 130
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP Response Error\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mExeptionMsg:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    .line 208
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 211
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_2
    return v2

    :cond_5
    :try_start_4
    const-string v5, "Content-Length"

    .line 135
    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 136
    array-length v5, v4
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v11, "%3.0f MB"

    const-string v13, "%2.1f MB"

    const-wide/32 v14, 0x6401fa4

    const v16, 0x49800288    # 1048657.0f

    if-lez v5, :cond_7

    .line 137
    :try_start_5
    aget-object v4, v4, v2

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v6

    .line 143
    iget-object v8, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mGlobal:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    iput-wide v4, v8, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mNcgFileSizeForDnp:J

    long-to-float v8, v4

    div-float v8, v8, v16

    cmp-long v9, v4, v14

    if-ltz v9, :cond_6

    new-array v9, v12, [Ljava/lang/Object;

    .line 146
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v9, v2

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mRemoteFileSizeForDisplay:Ljava/lang/String;

    goto :goto_3

    :cond_6
    new-array v9, v12, [Ljava/lang/Object;

    .line 148
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v9, v2

    invoke-static {v13, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mRemoteFileSizeForDisplay:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-wide/16 v4, 0x0

    :goto_3
    const/16 v8, 0x5000

    new-array v8, v8, [B

    .line 157
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    invoke-direct {v14, v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v9, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 162
    :cond_9
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ge v0, v12, :cond_a

    goto :goto_6

    .line 167
    :cond_a
    invoke-virtual {v9, v8, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v14, v0

    add-long/2addr v6, v14

    .line 171
    iget v0, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDownloadPercent:I

    const-wide/16 v14, 0x0

    cmp-long v10, v4, v14

    if-lez v10, :cond_b

    long-to-float v10, v6

    long-to-float v14, v4

    div-float/2addr v10, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v10, v10, v14

    float-to-int v10, v10

    .line 173
    iput v10, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDownloadPercent:I

    .line 175
    :cond_b
    iget v10, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDownloadPercent:I

    if-le v10, v0, :cond_c

    .line 177
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary;->getDownloadNotifier()Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;

    move-result-object v0

    iget v10, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDownloadPercent:I

    invoke-virtual {v0, v10}, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;->fireOnProgress(I)V

    :cond_c
    long-to-float v0, v6

    div-float v0, v0, v16

    const-wide/32 v14, 0x6401fa4

    cmp-long v10, v6, v14

    if-ltz v10, :cond_d

    new-array v10, v12, [Ljava/lang/Object;

    .line 182
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v10, v2

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDownlaodedSize:Ljava/lang/String;

    goto :goto_5

    :cond_d
    new-array v10, v12, [Ljava/lang/Object;

    .line 184
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v10, v2

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDownlaodedSize:Ljava/lang/String;

    :goto_5
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Integer;

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v2

    iget v0, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDownloadPercent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v12

    invoke-virtual {v1, v10}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 189
    iget-boolean v0, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mCancelDownload:Z

    if-eqz v0, :cond_9

    .line 190
    :goto_6
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 191
    iget-boolean v0, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mCancelDownload:Z
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_f

    if-eqz v3, :cond_e

    .line 208
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 211
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_7
    return v2

    :cond_f
    if-eqz v3, :cond_10

    .line 208
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 211
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_8
    return v12

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catch_4
    move-exception v0

    .line 203
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 204
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mExeptionMsg:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_11

    .line 208
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_5
    move-exception v0

    .line 200
    :try_start_a
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 201
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mExeptionMsg:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_11

    .line 208
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_9

    :catch_6
    move-exception v0

    .line 197
    :try_start_c
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 198
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mExeptionMsg:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v3, :cond_11

    .line 208
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 211
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    :goto_9
    return v2

    :goto_a
    if-eqz v3, :cond_12

    .line 208
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v3, v0

    .line 211
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    :cond_12
    :goto_b
    throw v2
.end method

.method static synthetic lambda$onPostExecute$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 245
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onPostExecute$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 261
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unused"
        }
    .end annotation

    .line 34
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mNcgFileDownloadURL:Ljava/lang/String;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDestFilePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->downloadNCG2File(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mGlobal:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mDownloadCompleted:Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unused"
        }
    .end annotation

    .line 34
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .line 239
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mExeptionMsg:Ljava/lang/String;

    const-string v0, "OK"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->dismiss()V

    .line 241
    new-instance p1, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mActivity:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-direct {p1, v2}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Download Error"

    .line 243
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 244
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mExeptionMsg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 245
    sget-object v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$DownloadNcgFileTask$JqVbx9yQMAC2CBzcjYbUf8RV4hQ;->INSTANCE:Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$DownloadNcgFileTask$JqVbx9yQMAC2CBzcjYbUf8RV4hQ;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->access$000(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->access$100(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, "ready"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->access$200(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->access$300(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 253
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->dismiss()V

    .line 254
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mGlobal:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mNcgFileSizeForDnp:J

    .line 255
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mCancelDownload:Z

    if-eqz p1, :cond_1

    .line 257
    new-instance p1, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mActivity:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-direct {p1, v2}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 258
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Download Canceled"

    .line 259
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Download has been canceled. You can resume this download later."

    .line 260
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 261
    sget-object v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$DownloadNcgFileTask$oNnedSl43-f_0twHAn9HsUc0blY;->INSTANCE:Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$DownloadNcgFileTask$oNnedSl43-f_0twHAn9HsUc0blY;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mGlobal:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mDownloadCompleted:Z

    if-eqz p1, :cond_2

    .line 268
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mGlobal:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mIsDnpExcuted:Z

    if-ne p1, v1, :cond_2

    .line 270
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mActivity:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const-string v0, "The download has been Completed"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 273
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary;->getDownloadNotifier()Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/pallycon/DemoLibrary$DownloadNotifyHelper;->fireOnDownloadCompleted()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mGlobal:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mDownloadCompleted:Z

    .line 75
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->init()V

    .line 76
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->show()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    const/4 v0, 0x0

    .line 223
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->access$000(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDownloadPercent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "%3d %%"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->access$100(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDownlaodedSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->access$200(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mRemoteFileSizeForDisplay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mProgressDialog:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->access$300(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->mDownloadPercent:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "onProgressUpdate(): Invalid NotifyID"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "item"
        }
    .end annotation

    .line 34
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public recreated()V
    .locals 0

    return-void
.end method
