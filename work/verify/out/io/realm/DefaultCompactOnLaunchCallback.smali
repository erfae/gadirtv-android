.class public Lio/realm/DefaultCompactOnLaunchCallback;
.super Ljava/lang/Object;
.source "DefaultCompactOnLaunchCallback.java"

# interfaces
.implements Lio/realm/CompactOnLaunchCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldCompact(JJ)Z
    .registers 8

    const-wide/32 v0, 0x3200000

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    long-to-double p3, p3

    long-to-double p1, p1

    div-double/2addr p3, p1

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p3, p1

    if-gez v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method
