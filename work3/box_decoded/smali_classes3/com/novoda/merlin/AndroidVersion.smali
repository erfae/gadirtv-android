.class Lcom/novoda/merlin/AndroidVersion;
.super Ljava/lang/Object;
.source "AndroidVersion.java"


# instance fields
.field private final deviceVersion:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0}, Lcom/novoda/merlin/AndroidVersion;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/novoda/merlin/AndroidVersion;->deviceVersion:I

    return-void
.end method


# virtual methods
.method isLollipopOrHigher()Z
    .locals 2

    .line 18
    iget v0, p0, Lcom/novoda/merlin/AndroidVersion;->deviceVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
