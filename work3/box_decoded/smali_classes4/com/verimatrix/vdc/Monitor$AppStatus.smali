.class public final enum Lcom/verimatrix/vdc/Monitor$AppStatus;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$AppStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$AppStatus;

.field public static final enum ACTIVE:Lcom/verimatrix/vdc/Monitor$AppStatus;

.field public static final enum ERROR:Lcom/verimatrix/vdc/Monitor$AppStatus;

.field public static final enum INACTIVE:Lcom/verimatrix/vdc/Monitor$AppStatus;

.field public static final enum NO_CONNECTION:Lcom/verimatrix/vdc/Monitor$AppStatus;

.field public static final enum PREPARING:Lcom/verimatrix/vdc/Monitor$AppStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 482
    new-instance v0, Lcom/verimatrix/vdc/Monitor$AppStatus;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/Monitor$AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$AppStatus;->ACTIVE:Lcom/verimatrix/vdc/Monitor$AppStatus;

    .line 483
    new-instance v1, Lcom/verimatrix/vdc/Monitor$AppStatus;

    const-string v3, "INACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/Monitor$AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$AppStatus;->INACTIVE:Lcom/verimatrix/vdc/Monitor$AppStatus;

    .line 484
    new-instance v3, Lcom/verimatrix/vdc/Monitor$AppStatus;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/Monitor$AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$AppStatus;->ERROR:Lcom/verimatrix/vdc/Monitor$AppStatus;

    .line 485
    new-instance v5, Lcom/verimatrix/vdc/Monitor$AppStatus;

    const-string v7, "NO_CONNECTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/verimatrix/vdc/Monitor$AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$AppStatus;->NO_CONNECTION:Lcom/verimatrix/vdc/Monitor$AppStatus;

    .line 486
    new-instance v7, Lcom/verimatrix/vdc/Monitor$AppStatus;

    const-string v9, "PREPARING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/verimatrix/vdc/Monitor$AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$AppStatus;->PREPARING:Lcom/verimatrix/vdc/Monitor$AppStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/verimatrix/vdc/Monitor$AppStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 481
    sput-object v9, Lcom/verimatrix/vdc/Monitor$AppStatus;->$VALUES:[Lcom/verimatrix/vdc/Monitor$AppStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 490
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 491
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$AppStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$AppStatus;
    .locals 1

    .line 481
    const-class v0, Lcom/verimatrix/vdc/Monitor$AppStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$AppStatus;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$AppStatus;
    .locals 1

    .line 481
    sget-object v0, Lcom/verimatrix/vdc/Monitor$AppStatus;->$VALUES:[Lcom/verimatrix/vdc/Monitor$AppStatus;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$AppStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$AppStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 495
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$AppStatus;->value:I

    return v0
.end method
