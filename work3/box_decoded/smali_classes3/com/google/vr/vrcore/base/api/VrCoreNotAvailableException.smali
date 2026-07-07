.class public final Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getConnectionResultString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;->errorCode:I

    return-void
.end method
