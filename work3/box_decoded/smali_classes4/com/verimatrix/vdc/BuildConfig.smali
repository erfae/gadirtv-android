.class public final Lcom/verimatrix/vdc/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.verimatrix.vdc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final JENKINS_BUILD_VERSION:Ljava/lang/String;

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.verimatrix.vdc"

.field public static final VERSION_CODE:I = 0x4c

.field public static final VERSION_NAME:Ljava/lang/String; = "2.7.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verimatrix/vdc/BuildConfig;->JENKINS_BUILD_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
