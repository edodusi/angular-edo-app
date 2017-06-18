import { EdoAppPage } from './app.po';

describe('edo-app App', () => {
  let page: EdoAppPage;

  beforeEach(() => {
    page = new EdoAppPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
