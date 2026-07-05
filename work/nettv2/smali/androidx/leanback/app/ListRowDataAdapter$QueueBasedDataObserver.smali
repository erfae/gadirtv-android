.class Landroidx/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;
.super Landroidx/leanback/widget/ObjectAdapter$DataObserver;
.source "ListRowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/ListRowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueueBasedDataObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/ListRowDataAdapter;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/ListRowDataAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    invoke-direct {p0}, Landroidx/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    .line 3
    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->notifyChanged()V

    return-void
.end method
