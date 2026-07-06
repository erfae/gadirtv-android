.class Lio/realm/internal/NativeObjectReference$ReferencePool;
.super Ljava/lang/Object;
.source "NativeObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/NativeObjectReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReferencePool"
.end annotation


# instance fields
.field public head:Lio/realm/internal/NativeObjectReference;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/realm/internal/NativeObjectReference$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/realm/internal/NativeObjectReference$ReferencePool;-><init>()V

    return-void
.end method
