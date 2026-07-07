.class public Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/PpiOverrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PpiOverride"
.end annotation


# instance fields
.field bottomBezelHeight:Ljava/lang/Float;

.field device:Ljava/lang/String;

.field hardware:Ljava/lang/String;

.field manufacturer:Ljava/lang/String;

.field model:Ljava/lang/String;

.field xPpi:Ljava/lang/Float;

.field yPpi:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 8

    .line 10
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->manufacturer:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->device:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->model:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->hardware:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->xPpi:Ljava/lang/Float;

    .line 7
    iput-object p6, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->yPpi:Ljava/lang/Float;

    .line 8
    iput-object p7, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->bottomBezelHeight:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method isMatching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->device:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->model:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->hardware:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
