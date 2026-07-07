.class public final Lcom/google/vr/ndk/base/Event$EventType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventType"
.end annotation


# static fields
.field public static final HEAD_TRACKING_PAUSED:I = 0x5

.field public static final HEAD_TRACKING_RESUMED:I = 0x4

.field public static final RECENTER:I = 0x1

.field public static final SAFETY_REGION_ENTER:I = 0x3

.field public static final SAFETY_REGION_EXIT:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
