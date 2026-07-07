.class final enum Lcom/novoda/merlin/NetworkStatus$State;
.super Ljava/lang/Enum;
.source "NetworkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/merlin/NetworkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/novoda/merlin/NetworkStatus$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/novoda/merlin/NetworkStatus$State;

.field public static final enum AVAILABLE:Lcom/novoda/merlin/NetworkStatus$State;

.field public static final enum UNAVAILABLE:Lcom/novoda/merlin/NetworkStatus$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/novoda/merlin/NetworkStatus$State;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/novoda/merlin/NetworkStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/novoda/merlin/NetworkStatus$State;->AVAILABLE:Lcom/novoda/merlin/NetworkStatus$State;

    .line 7
    new-instance v1, Lcom/novoda/merlin/NetworkStatus$State;

    const-string v3, "UNAVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/novoda/merlin/NetworkStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/novoda/merlin/NetworkStatus$State;->UNAVAILABLE:Lcom/novoda/merlin/NetworkStatus$State;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/novoda/merlin/NetworkStatus$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 5
    sput-object v3, Lcom/novoda/merlin/NetworkStatus$State;->$VALUES:[Lcom/novoda/merlin/NetworkStatus$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/novoda/merlin/NetworkStatus$State;
    .locals 1

    .line 5
    const-class v0, Lcom/novoda/merlin/NetworkStatus$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/novoda/merlin/NetworkStatus$State;

    return-object p0
.end method

.method public static values()[Lcom/novoda/merlin/NetworkStatus$State;
    .locals 1

    .line 5
    sget-object v0, Lcom/novoda/merlin/NetworkStatus$State;->$VALUES:[Lcom/novoda/merlin/NetworkStatus$State;

    invoke-virtual {v0}, [Lcom/novoda/merlin/NetworkStatus$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/novoda/merlin/NetworkStatus$State;

    return-object v0
.end method
