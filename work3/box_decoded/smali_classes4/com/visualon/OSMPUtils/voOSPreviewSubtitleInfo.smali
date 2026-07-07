.class public Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;
.super Ljava/lang/Object;
.source "voOSPreviewSubtitleInfo.java"


# instance fields
.field private mSampleText:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampleText()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->mSampleText:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setSampleText(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->mSampleText:Ljava/lang/String;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->mView:Landroid/view/View;

    return-void
.end method
