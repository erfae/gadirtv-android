.class public Lcom/nettv/livestore/utils/Utils$MXPackageInfo;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MXPackageInfo"
.end annotation


# instance fields
.field public final activityName:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/utils/Utils$MXPackageInfo;->packageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/utils/Utils$MXPackageInfo;->activityName:Ljava/lang/String;

    return-void
.end method
