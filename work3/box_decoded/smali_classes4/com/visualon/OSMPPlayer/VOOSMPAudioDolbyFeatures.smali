.class public Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;
.super Ljava/lang/Object;
.source "VOOSMPAudioDolbyFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;,
        Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;,
        Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;
    }
.end annotation


# instance fields
.field public dialogueEnhancementLevel:I

.field public dualDecodingAndMixing:Z

.field public enableJOC:Z

.field public endPoint:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

.field public inputMode:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

.field public mixingBalance:I

.field public postprocessing:Z

.field public program:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->STEREO_HEADPHONE:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->endPoint:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->postprocessing:Z

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->dialogueEnhancementLevel:I

    .line 133
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->dualDecodingAndMixing:Z

    .line 134
    iput v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->mixingBalance:I

    .line 135
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;->SINGLE:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    iput-object v1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->inputMode:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    .line 136
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->PROGRAM_DISABLE:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    iput-object v1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->program:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    .line 137
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->enableJOC:Z

    return-void
.end method


# virtual methods
.method public getDialogueEnhancementLevel()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->dialogueEnhancementLevel:I

    return v0
.end method

.method public getEnableJOC()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->enableJOC:Z

    return v0
.end method

.method public getEndPoint()Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->endPoint:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    return-object v0
.end method

.method public getInputMode()Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->inputMode:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    return-object v0
.end method

.method public getMixingBalance()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->mixingBalance:I

    return v0
.end method

.method public getProgram()Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->program:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    return-object v0
.end method

.method public isDualDecodingAndMixing()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->dualDecodingAndMixing:Z

    return v0
.end method

.method public isPostprocesing()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->postprocessing:Z

    return v0
.end method

.method public setDialogueEnhancementLevel(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->dialogueEnhancementLevel:I

    return-void
.end method

.method public setDualDecodingAndMixing(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->dualDecodingAndMixing:Z

    return-void
.end method

.method public setEnableJOC(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->enableJOC:Z

    return-void
.end method

.method public setEndPoint(Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->endPoint:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    return-void
.end method

.method public setInputMode(Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->inputMode:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    return-void
.end method

.method public setMixingBalance(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->mixingBalance:I

    return-void
.end method

.method public setPostprocessing(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->postprocessing:Z

    return-void
.end method

.method public setProgram(Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->program:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    return-void
.end method
