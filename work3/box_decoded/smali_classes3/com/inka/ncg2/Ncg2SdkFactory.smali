.class public Lcom/inka/ncg2/Ncg2SdkFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mNcgAgent:Lcom/inka/ncg2/Ncg2Agent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object v0

    sput-object v0, Lcom/inka/ncg2/Ncg2SdkFactory;->mNcgAgent:Lcom/inka/ncg2/Ncg2Agent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNcgAgentInstance()Lcom/inka/ncg2/Ncg2Agent;
    .locals 1

    .line 33
    sget-object v0, Lcom/inka/ncg2/Ncg2SdkFactory;->mNcgAgent:Lcom/inka/ncg2/Ncg2Agent;

    return-object v0
.end method
