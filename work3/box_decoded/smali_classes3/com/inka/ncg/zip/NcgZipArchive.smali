.class public Lcom/inka/ncg/zip/NcgZipArchive;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mArchiveContext:J

.field private mNcgZipCore:Lcom/inka/ncg/zip/NcgZipCore;

.field private mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;


# direct methods
.method public constructor <init>(Lcom/inka/ncg/zip/NcgZipCore;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mArchiveContext:J

    .line 11
    iput-object p1, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mNcgZipCore:Lcom/inka/ncg/zip/NcgZipCore;

    .line 12
    iget-object p1, p1, Lcom/inka/ncg/zip/NcgZipCore;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    iput-object p1, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 32
    iget-wide v0, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mArchiveContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 33
    iget-object v2, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    invoke-virtual {v2, v0, v1}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->destroyArchiveContext(J)V

    :cond_0
    return-void
.end method

.method public findEntry(Ljava/lang/String;)Lcom/inka/ncg/zip/NcgZipEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg/zip/NcgZipException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    iget-wide v1, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mArchiveContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->findEntry(JLjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 52
    new-instance p1, Lcom/inka/ncg/zip/NcgZipEntry;

    iget-object v2, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    invoke-direct {p1, v0, v1, v2}, Lcom/inka/ncg/zip/NcgZipEntry;-><init>(JLcom/inka/ncg/zip/NcgZipJniWrapper;)V

    return-object p1

    .line 46
    :cond_1
    new-instance p1, Lcom/inka/ncg/zip/NcgZipException;

    const-string v0, "Cannot create ZipEntryContext.\nYou should check Logcat log for the reason of the err."

    invoke-direct {p1, v0}, Lcom/inka/ncg/zip/NcgZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getZipEntryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/inka/ncg/zip/NcgZipEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg/zip/NcgZipException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg/zip/NcgZipException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->createArchiveContext()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mArchiveContext:J

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 23
    iget-object v1, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipArchive;->mNcgZipCore:Lcom/inka/ncg/zip/NcgZipCore;

    iget-wide v4, v0, Lcom/inka/ncg/zip/NcgZipCore;->mNcgSdkCoreContext:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->initArchiveContext(JJLjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "initArchiveContext() Failed : ErrorCode : 0x%08x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/inka/ncg/zip/NcgZipException;

    invoke-direct {v0, p1}, Lcom/inka/ncg/zip/NcgZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    new-instance p1, Lcom/inka/ncg/zip/NcgZipException;

    const-string v0, "Cannot create ZipArchiveContext.\nYou should check Logcat log for the reason of the err."

    invoke-direct {p1, v0}, Lcom/inka/ncg/zip/NcgZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
