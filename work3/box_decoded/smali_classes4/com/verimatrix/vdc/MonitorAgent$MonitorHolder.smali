.class final Lcom/verimatrix/vdc/MonitorAgent$MonitorHolder;
.super Ljava/lang/Object;
.source "MonitorAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MonitorHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/verimatrix/vdc/MonitorAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/verimatrix/vdc/MonitorAgent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;-><init>(Lcom/verimatrix/vdc/MonitorAgent$1;)V

    sput-object v0, Lcom/verimatrix/vdc/MonitorAgent$MonitorHolder;->INSTANCE:Lcom/verimatrix/vdc/MonitorAgent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/verimatrix/vdc/MonitorAgent;
    .locals 1

    .line 66
    sget-object v0, Lcom/verimatrix/vdc/MonitorAgent$MonitorHolder;->INSTANCE:Lcom/verimatrix/vdc/MonitorAgent;

    return-object v0
.end method
