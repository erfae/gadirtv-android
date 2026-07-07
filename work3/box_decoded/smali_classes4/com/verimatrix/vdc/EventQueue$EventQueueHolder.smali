.class final Lcom/verimatrix/vdc/EventQueue$EventQueueHolder;
.super Ljava/lang/Object;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/EventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventQueueHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/verimatrix/vdc/EventQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/verimatrix/vdc/EventQueue;

    invoke-direct {v0}, Lcom/verimatrix/vdc/EventQueue;-><init>()V

    sput-object v0, Lcom/verimatrix/vdc/EventQueue$EventQueueHolder;->INSTANCE:Lcom/verimatrix/vdc/EventQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/verimatrix/vdc/EventQueue;
    .locals 1

    .line 9
    sget-object v0, Lcom/verimatrix/vdc/EventQueue$EventQueueHolder;->INSTANCE:Lcom/verimatrix/vdc/EventQueue;

    return-object v0
.end method
