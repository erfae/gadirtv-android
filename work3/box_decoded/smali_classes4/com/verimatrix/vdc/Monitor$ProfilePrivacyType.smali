.class public final enum Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfilePrivacyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

.field public static final enum PRIVATE:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

.field public static final enum PUBLIC:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

.field public static final enum SECRET:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

.field public static final enum SHARED:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 388
    new-instance v0, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    const-string v1, "SECRET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;->SECRET:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    .line 389
    new-instance v1, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    const-string v3, "PRIVATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;->PRIVATE:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    .line 390
    new-instance v3, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    const-string v5, "SHARED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;->SHARED:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    .line 391
    new-instance v5, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    const-string v7, "PUBLIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;->PUBLIC:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 387
    sput-object v7, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;
    .locals 1

    .line 387
    const-class v0, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;
    .locals 1

    .line 387
    sget-object v0, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    return-object v0
.end method
