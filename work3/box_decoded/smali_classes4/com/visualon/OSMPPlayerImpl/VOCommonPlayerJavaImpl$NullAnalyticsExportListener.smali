.class final Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$NullAnalyticsExportListener;
.super Ljava/lang/Object;
.source "VOCommonPlayerJavaImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullAnalyticsExportListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$NullAnalyticsExportListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVOAnalyticsEvent()V
    .locals 0

    return-void
.end method
