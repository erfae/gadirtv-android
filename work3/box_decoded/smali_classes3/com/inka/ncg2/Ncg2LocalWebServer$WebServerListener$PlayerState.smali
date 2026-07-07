.class public final enum Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

.field public static final enum Fail:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

.field public static final enum ReadyToPlay:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

.field public static final enum Unknown:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 824
    new-instance v0, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;->Unknown:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    .line 835
    new-instance v1, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    const-string v3, "ReadyToPlay"

    const/4 v4, 0x1

    const/16 v5, 0x21

    invoke-direct {v1, v3, v4, v5}, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;->ReadyToPlay:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    .line 846
    new-instance v3, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    const-string v5, "Fail"

    const/4 v6, 0x2

    const/16 v7, 0x22

    invoke-direct {v3, v5, v6, v7}, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;->Fail:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 813
    sput-object v5, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;->$VALUES:[Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 850
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 851
    iput p3, p0, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;
    .locals 1

    .line 813
    const-class v0, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    return-object p0
.end method

.method public static values()[Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;
    .locals 1

    .line 813
    sget-object v0, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;->$VALUES:[Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    invoke-virtual {v0}, [Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    return-object v0
.end method


# virtual methods
.method public getStateCode()I
    .locals 1

    .line 855
    iget v0, p0, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;->mCode:I

    return v0
.end method
