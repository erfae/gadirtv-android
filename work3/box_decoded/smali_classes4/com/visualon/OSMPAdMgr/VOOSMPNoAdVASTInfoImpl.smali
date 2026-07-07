.class Lcom/visualon/OSMPAdMgr/VOOSMPNoAdVASTInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPAdEventInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPAdMgr/VOOSMPNoAdVASTInfo;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPNoAdVASTInfoImpl"


# instance fields
.field private mNoAdVASTUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNoAdVASTInfoImpl;->mNoAdVASTUrl:Ljava/lang/String;

    .line 225
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNoAdVASTInfoImpl;->mNoAdVASTUrl:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPNoAdVASTInfoImpl"

    const-string v1, "noAdVASTUrl is null!"

    .line 227
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNoAdVASTUrl()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNoAdVASTInfoImpl;->mNoAdVASTUrl:Ljava/lang/String;

    return-object v0
.end method
