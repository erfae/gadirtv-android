.class public final enum Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfflineSupportPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

.field public static final enum NotSupportOffline:Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

.field public static final enum OfflineSupport:Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;


# instance fields
.field private countOfExecutionLimit:I

.field private policyCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 124
    new-instance v0, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    const-string v1, "NotSupportOffline"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->NotSupportOffline:Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    .line 140
    new-instance v1, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    const-string v4, "OfflineSupport"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->OfflineSupport:Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    new-array v4, v5, [Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 111
    sput-object v4, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->$VALUES:[Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 143
    iput p1, p0, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->countOfExecutionLimit:I

    .line 146
    iput p3, p0, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->policyCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;
    .locals 1

    .line 111
    const-class v0, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    return-object p0
.end method

.method public static values()[Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;
    .locals 1

    .line 111
    sget-object v0, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->$VALUES:[Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    invoke-virtual {v0}, [Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    return-object v0
.end method


# virtual methods
.method public getCountOfExecutionLimit()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->countOfExecutionLimit:I

    return v0
.end method

.method public getPolicyCode()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->policyCode:I

    return v0
.end method

.method public setCountOfExecutionLimit(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->countOfExecutionLimit:I

    return-void
.end method
