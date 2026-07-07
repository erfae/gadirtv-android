.class public Lcom/inka/ncg/zip/NcgZipEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEntryContext:J

.field private mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;


# direct methods
.method constructor <init>(JLcom/inka/ncg/zip/NcgZipJniWrapper;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mEntryContext:J

    .line 11
    iput-object p3, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 33
    iget-wide v0, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mEntryContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 34
    iget-object v4, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    invoke-virtual {v4, v0, v1}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->destroyEntryContext(J)V

    .line 35
    iput-wide v2, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mEntryContext:J

    :cond_0
    return-void
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    iget-wide v1, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mEntryContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->getEntryName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg/zip/NcgZipException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    iget-wide v1, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mEntryContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->createZipInputStreamContext(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 29
    new-instance v2, Lcom/inka/ncg/zip/a;

    iget-object v3, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    invoke-direct {v2, v3, v0, v1}, Lcom/inka/ncg/zip/a;-><init>(Lcom/inka/ncg/zip/NcgZipJniWrapper;J)V

    return-object v2

    .line 25
    :cond_0
    new-instance v0, Lcom/inka/ncg/zip/NcgZipException;

    const-string v1, "Cannot create ZipInputStream. \nYou should check Logcat log for the reason of the err."

    invoke-direct {v0, v1}, Lcom/inka/ncg/zip/NcgZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()J
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mNcgZipJni:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    iget-wide v1, p0, Lcom/inka/ncg/zip/NcgZipEntry;->mEntryContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->getSize(J)J

    move-result-wide v0

    return-wide v0
.end method
