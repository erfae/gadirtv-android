.class public final enum Lcom/verimatrix/vdc/Monitor$ProfileSetType;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileSetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$ProfileSetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$ProfileSetType;

.field public static final enum ADD_NUMBER:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

.field public static final enum APPEND:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

.field public static final enum IGNORE_HISTORY:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

.field public static final enum KEEP_HISTORY:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

.field public static final enum WRITE_ONCE:Lcom/verimatrix/vdc/Monitor$ProfileSetType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 373
    new-instance v0, Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    const-string v1, "WRITE_ONCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verimatrix/vdc/Monitor$ProfileSetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$ProfileSetType;->WRITE_ONCE:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    .line 374
    new-instance v1, Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    const-string v3, "KEEP_HISTORY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verimatrix/vdc/Monitor$ProfileSetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$ProfileSetType;->KEEP_HISTORY:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    .line 375
    new-instance v3, Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    const-string v5, "IGNORE_HISTORY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verimatrix/vdc/Monitor$ProfileSetType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$ProfileSetType;->IGNORE_HISTORY:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    .line 376
    new-instance v5, Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    const-string v7, "ADD_NUMBER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verimatrix/vdc/Monitor$ProfileSetType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$ProfileSetType;->ADD_NUMBER:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    .line 377
    new-instance v7, Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    const-string v9, "APPEND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/verimatrix/vdc/Monitor$ProfileSetType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$ProfileSetType;->APPEND:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 372
    sput-object v9, Lcom/verimatrix/vdc/Monitor$ProfileSetType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$ProfileSetType;
    .locals 1

    .line 372
    const-class v0, Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$ProfileSetType;
    .locals 1

    .line 372
    sget-object v0, Lcom/verimatrix/vdc/Monitor$ProfileSetType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$ProfileSetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    return-object v0
.end method
