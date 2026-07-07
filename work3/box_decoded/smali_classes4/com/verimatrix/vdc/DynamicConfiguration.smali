.class public final Lcom/verimatrix/vdc/DynamicConfiguration;
.super Ljava/lang/Object;
.source "DynamicConfiguration.java"


# static fields
.field static LEGACY_VRT_SERVER_FLAG:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/verimatrix/vdc/DynamicConfiguration;->LEGACY_VRT_SERVER_FLAG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLegacyVrtServerFlag(Z)V
    .locals 0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/verimatrix/vdc/DynamicConfiguration;->LEGACY_VRT_SERVER_FLAG:Ljava/lang/Boolean;

    return-void
.end method
