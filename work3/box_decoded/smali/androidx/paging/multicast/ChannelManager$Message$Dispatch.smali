.class public abstract Landroidx/paging/multicast/ChannelManager$Message$Dispatch;
.super Landroidx/paging/multicast/ChannelManager$Message;
.source "ChannelManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/multicast/ChannelManager$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Dispatch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;,
        Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Error;,
        Landroidx/paging/multicast/ChannelManager$Message$Dispatch$UpstreamFinished;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/paging/multicast/ChannelManager$Message<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0004\u0008\u0002\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0003\u0004\u0005\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003\u0082\u0001\u0003\u0007\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch;",
        "T",
        "Landroidx/paging/multicast/ChannelManager$Message;",
        "()V",
        "Error",
        "UpstreamFinished",
        "Value",
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;",
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Error;",
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$UpstreamFinished;",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, v0}, Landroidx/paging/multicast/ChannelManager$Message;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Landroidx/paging/multicast/ChannelManager$Message$Dispatch;-><init>()V

    return-void
.end method
