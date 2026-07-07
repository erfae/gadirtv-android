.class public Lcom/visualon/OSMPUtils/voBluetoothService$LocalBinder;
.super Landroid/os/Binder;
.source "voBluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voBluetoothService;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voBluetoothService;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService$LocalBinder;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/visualon/OSMPUtils/voBluetoothService;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService$LocalBinder;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    return-object v0
.end method
