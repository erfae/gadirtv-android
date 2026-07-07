.class final Lcom/verimatrix/vdc/RequestQueue$RequestQueueHolder;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestQueueHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/verimatrix/vdc/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/verimatrix/vdc/RequestQueue;

    invoke-direct {v0}, Lcom/verimatrix/vdc/RequestQueue;-><init>()V

    sput-object v0, Lcom/verimatrix/vdc/RequestQueue$RequestQueueHolder;->INSTANCE:Lcom/verimatrix/vdc/RequestQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/verimatrix/vdc/RequestQueue;
    .locals 1

    .line 19
    sget-object v0, Lcom/verimatrix/vdc/RequestQueue$RequestQueueHolder;->INSTANCE:Lcom/verimatrix/vdc/RequestQueue;

    return-object v0
.end method
