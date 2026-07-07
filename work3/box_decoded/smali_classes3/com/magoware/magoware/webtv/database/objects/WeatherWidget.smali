.class public Lcom/magoware/magoware/webtv/database/objects/WeatherWidget;
.super Ljava/lang/Object;
.source "WeatherWidget.java"


# instance fields
.field public widget_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWidget_url()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/WeatherWidget;->widget_url:Ljava/lang/String;

    return-object v0
.end method
