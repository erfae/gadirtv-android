.class public Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderInformation"
.end annotation


# instance fields
.field public acquisitionURL:Ljava/lang/String;

.field public binding:Ljava/lang/String;

.field public contentID:Ljava/lang/String;

.field public packageDate:Ljava/lang/String;

.field public serviceProvider:Ljava/lang/String;

.field public siteID:Ljava/lang/String;

.field final synthetic this$0:Lcom/inka/ncg2/Ncg2Agent;


# direct methods
.method public constructor <init>(Lcom/inka/ncg2/Ncg2Agent;)V
    .locals 0

    .line 2117
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->this$0:Lcom/inka/ncg2/Ncg2Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
