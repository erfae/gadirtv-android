.class public Lcom/inka/ncg/jni/NcgCoreWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNcgCoreContext:J

.field private ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;


# direct methods
.method public constructor <init>(Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    .line 10
    iput-object p1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    return-void
.end method

.method private createNcgCoreContext()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->nzbPWHqRZLoZWaEexlZP()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    return-void
.end method

.method private destroyNcgCoreContext()V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->WeZidAytfxNYhVVrZPhY(J)V

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    return-void
.end method


# virtual methods
.method public HTTP_AddHttpLiveStreamUrlForPlayback(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->fDiaFFEXSjQOiDNVbJog(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public HTTP_AddLocalContentPathForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 9

    .line 276
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->VQLELhbsRaBomPhjGTKt(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public HTTP_AddProgressiveDownloadUrlForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 280
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->WTAFKoywCBguBhBJdoOa(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public HTTP_ClearPlaybackUrls()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->EjplLPycMkmmtATXkNnH(J)V

    return-void
.end method

.method public HTTP_GetPort()I
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->zWOCLqnUdWGStFfbDWXl(J)I

    move-result v0

    return v0
.end method

.method public HTTP_SetCookieChecking(Z)V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->xuUyIoweeCjYwyUJmXLQ(JZ)V

    return-void
.end method

.method public HTTP_SetLowPerfermenceDevice(Z)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->ftftwtwttxtxwyUJabcd(JZ)V

    return-void
.end method

.method public HTTP_SetMultipleConnectionDeny(Z)V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->lmHYkscdlPKTdFEEjoeL(JZ)V

    return-void
.end method

.method public HTTP_SetOnNcgLocalWebServerListener(Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->FWRFfEJNgijLqAvdnHls(JLcom/inka/ncg/jni/OnNcgLocalWebServerListener;)V

    return-void
.end method

.method public HTTP_SetUserAgentChecking(Z)V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->diGuGkjwuDhwofGsGGdu(JZ)V

    return-void
.end method

.method public HTTP_Start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->MniizCpZhcOglBdYJANZ(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public HTTP_Stop()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->wrOEbQoMXjAjluOaNKSi(J)V

    return-void
.end method

.method public LicMgr_AddExtraLicense(Ljava/lang/String;[BIILjava/lang/String;Ljava/lang/String;III)I
    .locals 13

    move-object v0, p0

    .line 122
    iget-object v1, v0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v2, v0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->RwjhIqweoPhRykEKZkfa(JLjava/lang/String;[BIILjava/lang/String;Ljava/lang/String;III)I

    move-result v1

    return v1
.end method

.method public LicMgr_DeleteAllContentsLicense()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->CvLrrOppjAVIlUCutjTC(J)V

    return-void
.end method

.method public LicMgr_MakeContentsRORequestMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[I)I
    .locals 8

    .line 82
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->ZVjYcraxbidCKaAzTxQN(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[I)I

    move-result p1

    return p1
.end method

.method public LicMgr_ParseAndSaveROMsg(Ljava/lang/String;Z)I
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->OIZBDZqpShULaKQYvxol(JLjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public LicMgr_RemoveAllTemporaryLicense()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->VIymGmFacDekWYLwYMWO(J)V

    return-void
.end method

.method public LicMgr_RemoveContentsLicense(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->ARONrFOCigMfJcgOmZGL(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public LicMgr_RemoveRODBFile(Ljava/lang/String;)I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->VdifekAfjvuuQfQGFCdL(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public NcgFile_fread(J[BJ[J)I
    .locals 7

    .line 224
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->AGUUkgFerylagBDUjcqJ(J[BJ[J)I

    move-result p1

    return p1
.end method

.method public NcgFile_fseek(JJI)I
    .locals 6

    .line 229
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->iTlVWKvqQvukfZfgXdTY(JJI)I

    move-result p1

    return p1
.end method

.method public NcgFile_ftell(J)J
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->twPmCwRfRPjFhXflKAQk(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public SDCARDBINDING_AddLicense(Ljava/lang/String;J)V
    .locals 6

    .line 424
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->OcYRsGHGPiKILGgAAuSH(JLjava/lang/String;J)V

    return-void
.end method

.method public SDCARDBINDING_CreateCID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .line 420
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->pbjqJlbSpoBSchmLFkFJ(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addHttpCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->ikDckXExwEZdrnVfWEtG(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addLicense(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    .line 481
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v11}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->CVbpGhsZRbuKJdyyYmaZ(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIZ)I

    move-result p1

    return p1
.end method

.method public addLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)I
    .locals 13

    move-object v0, p0

    .line 474
    iget-object v1, v0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v2, v0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v1 .. v12}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->CVbpGhsZRbuKJdyyYmaZ(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v1

    return v1
.end method

.method public cancelPermission(J)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->EWItWJsjfhfqnvFEMjOa(J)V

    return-void
.end method

.method public checkLicenseValidationByCID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->oaHHHMoEirtbXJXHOljh(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkMethodTypeA(Ljava/lang/String;)I
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->EauieviEfhjqSWQjkdof(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->UuNfHgAiGSVYpBRfEtaF(J)V

    .line 49
    invoke-direct {p0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->destroyNcgCoreContext()V

    return-void
.end method

.method public clearCencDecrypt(J)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->iWOglOEbvLxkwIGfDKRb(J)V

    return-void
.end method

.method public clearHttpCustomHeader()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->aybvsKIjLHEOoxIXmKxD(J)V

    return-void
.end method

.method public closeFile(J)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->yXLdHDYQWaKwSqzXqUuo(J)V

    return-void
.end method

.method public convertCountToGMT(J)Ljava/lang/String;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->jVcjWGzSMGGOVBsxviml(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertGMTtoCount(Ljava/lang/String;)J
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->vlZqbMJffZyTmLtTLDWP(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createNcgCencContext()J
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->riBrvAWrHwviPAODBcTB(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public createNcgFileContext()J
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->OAbYkzjFrJlhRrdFgphq(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public decreaseRemainPlayCount(J)I
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->wkDEpLLrYSWnSKEFuFfi(J)I

    move-result p1

    return p1
.end method

.method public decryptCencSample(J[B[BI[B)I
    .locals 7

    .line 243
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->AnmXLmZeNEUkhhKGSTGg(J[B[BI[B)I

    move-result p1

    return p1
.end method

.method public destroyNcgCencContext(J)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->WgiXBZQFrgAWHcmrKbKZ(J)V

    return-void
.end method

.method public destroyNcgFileContext(J)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->qBOjfxwdyPmsPTYLPvqY(J)V

    return-void
.end method

.method public downloadAndDecryptByNcgSdkPrivateKey(Ljava/lang/String;Lcom/inka/ncg/jni/HttpRequestJniCallback;[Ljava/lang/String;)I
    .locals 6

    .line 456
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->NxxvrlMyuXeUglTubPCj(JLjava/lang/String;Lcom/inka/ncg/jni/HttpRequestJniCallback;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public downloadLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/inka/ncg/jni/HttpRequestJniCallback;)I
    .locals 12

    move-object v0, p0

    .line 345
    iget-object v1, v0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v2, v0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->hjOptaguyrILGDGhOFTk(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/inka/ncg/jni/HttpRequestJniCallback;)I

    move-result v1

    return v1
.end method

.method public downloadLicenseByToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/inka/ncg/jni/HttpRequestJniCallback;)I
    .locals 12

    move-object v0, p0

    .line 349
    iget-object v1, v0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v2, v0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->JmzsyZObAqspZNkFFrDY(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/inka/ncg/jni/HttpRequestJniCallback;)I

    move-result v1

    return v1
.end method

.method public enableLog(I)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->IhAcwqaLKSaRnTlikJqU(JI)V

    return-void
.end method

.method public enableParsedXMLLog(I)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->BaLNrdjqhMtxIvjVslXG(JI)V

    return-void
.end method

.method public enableSeucreDeviceID(I)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->FXQgCfYBkpnGPFwrPBzL(JI)V

    return-void
.end method

.method public getContentSize(J)J
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->ZEiOzjGwiytyMidBLbek(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getCurrentSecureTime()Ljava/lang/String;
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->CeeWXkGzVGYAzZCtJYuG(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderInfo(J[B[B[B[B[B)I
    .locals 8

    .line 177
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->dcdmItulVPwKylwOVxan(J[B[B[B[B[B)I

    move-result p1

    return p1
.end method

.method public getHeaderSize(J)J
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->WHpQLRjnQqGUlieuTEIy(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLastErrorMsg()Ljava/lang/String;
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->GKFKJqDqnToPUWRHgblU(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastRequestPlainData()Ljava/lang/String;
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->WlNnILCEnXJUgAPPIyda(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastRequestRowData()Ljava/lang/String;
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->GKEiKewEKvWAhCMKZwQT(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastResponseRowData()Ljava/lang/String;
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->wLuSxlBMmCkVEYMWSVjw(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastServerErrorCode()I
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->XnkrGIYGNxAqYcMqxRGo(J)I

    move-result v0

    return v0
.end method

.method public getLastServerErrorMsg()Ljava/lang/String;
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->WAuhrXnBgZCKGzFkwrkS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLicenseInfoExByCID(Ljava/lang/String;Ljava/lang/String;[B[B[I[J[J[J[B)I
    .locals 13

    move-object v0, p0

    .line 204
    iget-object v1, v0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v2, v0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->yhvEfcYCGavsnqeqzOLF(JLjava/lang/String;Ljava/lang/String;[B[B[I[J[J[J[B)I

    move-result v1

    return v1
.end method

.method public getNcgCoreContext()J
    .locals 2

    .line 488
    iget-wide v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    return-wide v0
.end method

.method public getServerGmtTime()Ljava/lang/String;
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->pgshtLVAXGEawqJhExJi(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 42
    invoke-direct {p0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->createNcgCoreContext()V

    .line 43
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->YnCYrpvrKNaBDVbdhRFZ(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public initSecureTimeAndCheckAppID(Ljava/lang/String;IILjava/lang/String;Lcom/inka/ncg/jni/HttpRequestJniCallback;)I
    .locals 8

    .line 428
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->VDNfeJnDzQWNsYCiNsQX(JLjava/lang/String;IILjava/lang/String;Lcom/inka/ncg/jni/HttpRequestJniCallback;)I

    move-result p1

    return p1
.end method

.method public isDeviceRooted()I
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->abcdIoweeCjYwyUJabcd(J)I

    move-result v0

    return v0
.end method

.method public isNcgFile(Ljava/lang/String;)I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->uNlAhARKFtqyymjasrcX(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public isNcgHeader([B)I
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->APYURQAhuxtkGRIFIzrp(J[B)I

    move-result p1

    return p1
.end method

.method public isPallyconFile(Ljava/lang/String;)I
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->dfoAdufFQWoiBPdgqwEb(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public isSecureTimeSetByOnline()Z
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->DwfdRgyVCWfdfWtasdvW(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualMachine()I
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->dkeDeiHGsheWfvAdwwiM(J)I

    move-result v0

    return v0
.end method

.method public openAndVerifyFile(JLjava/lang/String;I)I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->HipbfpOEpaTNzajcWSUW(JLjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public openAndVerifyHeader(J[BIJ)I
    .locals 7

    .line 163
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->OhDyjPjLXDfbIoGoffdZ(J[BIJ)I

    move-result p1

    return p1
.end method

.method public prepareCencDecrypt(J)I
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->bkdFhOodcmTJuUNCYzff(J)I

    move-result p1

    return p1
.end method

.method public readPallyconInfoTypeA()Ljava/lang/String;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->DegdifypaEEfgQkodyuf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readPallyconInfoTypeB()Ljava/lang/String;
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->qwudbkdDwhGsjWtdBDfa(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readPallyconInternalInfoTypeA()Ljava/lang/String;
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->cheuqEgVVweEaDBgdqod(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendCustomChannelRequest(Ljava/lang/String;Ljava/lang/String;Lcom/inka/ncg/jni/HttpRequestJniCallback;[Ljava/lang/String;)I
    .locals 7

    .line 450
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->AfMFQjGOQluesWDlqBBX(JLjava/lang/String;Ljava/lang/String;Lcom/inka/ncg/jni/HttpRequestJniCallback;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setCustomCookie(Ljava/lang/String;)V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->diUIdjdihGjEjkCkdfiF(JLjava/lang/String;)V

    return-void
.end method

.method public setHttpRequestJniCallback(Lcom/inka/ncg/jni/HttpRequestJniCallback;)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->BeeyKrDdGlyPHraVmvkj(JLcom/inka/ncg/jni/HttpRequestJniCallback;)V

    return-void
.end method

.method public setLicense(J)I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->NRuaiArgdFYKIkqmsWEZ(J)I

    move-result p1

    return p1
.end method

.method public setLicenseForCenc(JLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->zLjXSOUYjgFeheVzyFlz(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setNcgSdkHelperCallback(Lcom/inka/ncg/jni/NcgSdkHelperCallback;)V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->GlcDJOyjgJbHXKZkOybC(JLcom/inka/ncg/jni/NcgSdkHelperCallback;)V

    return-void
.end method

.method public writeSecureTimeToFile()V
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->ncgCore:Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;

    iget-wide v1, p0, Lcom/inka/ncg/jni/NcgCoreWrapper;->mNcgCoreContext:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/LsoSqEPSTPtksWokcBvZ;->BBbwknpqGLMaNHXbXQGk(J)V

    return-void
.end method
