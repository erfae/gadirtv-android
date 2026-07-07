.class public Lcom/inka/ncg/zip/NcgZipJniWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;


# direct methods
.method public constructor <init>(Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    return-void
.end method


# virtual methods
.method public createArchiveContext()J
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->hPAWEPxAAVDcywArudJS()J

    move-result-wide v0

    return-wide v0
.end method

.method public createZipInputStreamContext(J)J
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->JqMpfOeVyTZjBJQefmxQ(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public destroyArchiveContext(J)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->ARmaodSxbohWjytLUbnp(J)V

    return-void
.end method

.method public destroyEntryContext(J)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->UNTSICumBcnfOFdEQGwE(J)V

    return-void
.end method

.method public destroyZipInputStream(J)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->TgCbZgvDlYOPLzGjXroB(J)V

    return-void
.end method

.method public eof(J)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->GgKbJYwkUJwPqIWaLOCK(J)Z

    move-result p1

    return p1
.end method

.method public findEntry(JLjava/lang/String;)J
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->ckwyDcbdvYCDVdlQecZN(JLjava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getContentSize(J)I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->nSTtsPLVRRHGRxXRWGMQ(J)I

    move-result p1

    return p1
.end method

.method public getEntryName(J)Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->dxHIZlLqCjGgQxQSiBXA(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSize(J)J
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->daErcEqRiafwSONgrbuV(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public initArchiveContext(JJLjava/lang/String;)I
    .locals 6

    .line 30
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->diKHfsyRoXIJpJxnfwpF(JJLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public initNcgSdkCoreContext(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 16
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->beSasvCHxglMwoYiaurd(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public read(J[BI[I)I
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->ByhwdDVgPJYWdSrbynSB(J[BI[I)I

    move-result p1

    return p1
.end method

.method public seek(JII)I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->GaMmvoRuAxxgJzBNRDAT(JII)I

    move-result p1

    return p1
.end method

.method public setSecureClockFromServer(JLjava/lang/String;)I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->GUHsLwIKVxfEoFlfeQhE(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public tell(J)I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/inka/ncg/zip/NcgZipJniWrapper;->mNcgZipJni:Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/zip/IVIjfNJlYfLrZiGzlWTb;->XjwUCbCdCvuAwgHLQALY(J)I

    move-result p1

    return p1
.end method
