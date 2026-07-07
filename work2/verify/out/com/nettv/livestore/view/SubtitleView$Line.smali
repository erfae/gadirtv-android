.class public Lcom/nettv/livestore/view/SubtitleView$Line;
.super Ljava/lang/Object;
.source "SubtitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/view/SubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Line"
.end annotation


# instance fields
.field public text:Ljava/lang/String;

.field public to:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p3, p0, Lcom/nettv/livestore/view/SubtitleView$Line;->to:J

    .line 3
    iput-object p5, p0, Lcom/nettv/livestore/view/SubtitleView$Line;->text:Ljava/lang/String;

    return-void
.end method
