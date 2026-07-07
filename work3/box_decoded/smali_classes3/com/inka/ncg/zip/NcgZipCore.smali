.class public Lcom/inka/ncg/zip/NcgZipCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SECURE_TIME_SERVER_URL:Ljava/lang/String; = "https://license.pallycon.com/ri/licenseManager.do"


# instance fields
.field mNcgSdkCoreContext:J

.field mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/inka/ncg/zip/NcgZipJniWrapper;

    new-instance v1, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-direct {v1}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;-><init>()V

    invoke-direct {v0, v1}, Lcom/inka/ncg/zip/NcgZipJniWrapper;-><init>(Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;)V

    iput-object v0, p0, Lcom/inka/ncg/zip/NcgZipCore;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    return-void
.end method


# virtual methods
.method public initNcgCore(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg/zip/NcgZipException;
        }
    .end annotation

    .line 17
    iput-wide p1, p0, Lcom/inka/ncg/zip/NcgZipCore;->mNcgSdkCoreContext:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 23
    iget-object v3, p0, Lcom/inka/ncg/zip/NcgZipCore;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->initNcgSdkCoreContext(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "initNcgCore() Failed : ErrorCode : %d"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/inka/ncg/zip/NcgZipException;

    invoke-direct {p2, p1}, Lcom/inka/ncg/zip/NcgZipException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_1
    new-instance p1, Lcom/inka/ncg/zip/NcgZipException;

    const-string p2, "Cannot create NcgSdkCoreContext. \nYou should check Logcat log for the reason of the err."

    invoke-direct {p1, p2}, Lcom/inka/ncg/zip/NcgZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSecureClockFromServer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg/zip/NcgZipException;
        }
    .end annotation

    .line 32
    iget-wide v0, p0, Lcom/inka/ncg/zip/NcgZipCore;->mNcgSdkCoreContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 36
    iget-object v2, p0, Lcom/inka/ncg/zip/NcgZipCore;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    const-string v3, "https://license.pallycon.com/ri/licenseManager.do"

    invoke-virtual {v2, v0, v1, v3}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->setSecureClockFromServer(JLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "setSecureClockFromServer() Failed : ErrorCode : %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/inka/ncg/zip/NcgZipException;

    invoke-direct {v1, v0}, Lcom/inka/ncg/zip/NcgZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not Valid Status - You need to call initNcgCore() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
